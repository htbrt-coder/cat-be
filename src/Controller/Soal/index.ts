import { Request, Response, NextFunction } from "express";
import Responses from "../../Utils/Helper/Response";
import SoalService from "../../Service/Soal";

class Soal {
    soalService: SoalService;

    constructor() {
        this.soalService = new SoalService();
    }

    public async findAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.type) throw "Type Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = req.query.type as string;

            const Result = await this.soalService.findAll(Payload);
            Responses.success(res, Result);
        } catch (error) {
            Responses.failed(res, error, next);
        }
    }

    public async findCover(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Required";
            else if (!req.query?.type) throw "Type Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query.secureId as string;
            const type = req.query.type as string;

            const Result = await this.soalService.findCover(secureId, type);
            Responses.success(res, Result);
        } catch (error) {
            Responses.failed(res, error, next);
        }
    }
}

export default Soal;