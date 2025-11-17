import { Request, Response, NextFunction } from "express";
import Responses from "../../../Utils/Helper/Response";
import KejiwaanService from "../../../Service/Question/Kejiwaan";
import { PayloadRequestKejiwaanQuestionVO } from "../../../Types";

class Kejiwaan {
    kejiwaanService: KejiwaanService;

    constructor() {
        this.kejiwaanService = new KejiwaanService();
    }

    public async findAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Group Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;
            const type = req.query?.type as string;


            const Result = await this.kejiwaanService.findAll(secureId, type);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertData(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.groupSecureId) throw "SecureId Group Required";
            else if (req.body?.answerList.length == 0) throw "Answer List Required at least 2 answer's"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                groupSecureId: req.body.groupSecureId,
                question: {
                    question: req.body.question?.question,
                    secureId: req.body.question?.secureId || ""
                },
                answerList: [...req.body.answerList]
            } as PayloadRequestKejiwaanQuestionVO

            const Result = await this.kejiwaanService.insertData(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deleteQuestion(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Question Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;

            const Result = await this.kejiwaanService.deleteQuestion(secureId);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
};

export default Kejiwaan;