import { Request, Response, NextFunction } from "express";
import Responses from "../../Utils/Helper/Response";
import PeraturanService from "../../Service/Peraturan";

class Peraturan {
    peraturanService: PeraturanService;

    constructor() {
        this.peraturanService = new PeraturanService();
    }

    public async findAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            const Result = await this.peraturanService.findAll();
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertData(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.rule_type) throw "Rule Type Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                secureId: req.body.secureId || "",
                type: req.body.type,
                description: req.body.description,
                rule_type: req.body.rule_type
            };

            const Result = await this.peraturanService.insertData(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
};

export default Peraturan