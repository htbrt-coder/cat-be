import { Request, Response, NextFunction } from "express";
import Responses from "../../../Utils/Helper/Response";
import KecerdasanService from "../../../Service/Group/Kecerdasan";
import { PayloadCreateKecerdasanVO, PayloadActivationVO } from "../../../Types";
import { v4 as uuidv4 } from "uuid";

class Kecerdasan {
    kecerdasanService: KecerdasanService;

    constructor() {
        this.kecerdasanService = new KecerdasanService();
    }

    public async insertData(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.title) throw "Title Required";
            else if (!req.body?.time) throw "Time Required";
            else if (req.body?.is_active == null) throw "Bad Request";

        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            let Result: any;
            const payload: PayloadCreateKecerdasanVO = {
                secureId: "",
                title: req.body?.title,
                description: req.body?.description || "",
                time: req.body?.time,
                is_active: req.body?.is_active,
                is_random: req.body?.is_random
            }

            if (!req.body?.secureId) {
                payload.secureId = uuidv4();
                Result = await this.kecerdasanService.createData(payload);
            } else {
                payload.secureId = req.body?.secureId;
                Result = await this.kecerdasanService.updateData(payload)
            }

            return Responses.success(res, Result)
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async activation(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.secureId) throw "Secure Id Required"
            else if (req.body?.is_active == null) throw "Bad Request"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const payload: PayloadActivationVO = {
                secureId: req.body.secureId,
                is_active: req.body.is_active,
            }

            const Result = await this.kecerdasanService.activation(payload);
            return Responses.success(res, Result)
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async findAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            const search = req.query?.search as string;

            const Result = await this.kecerdasanService.findAll(search);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deleteData(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.params?.secureId) throw "Bad Request";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const payload: string = req.params.secureId;
            const Result = await this.kecerdasanService.deleteData(payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
}

export default Kecerdasan;