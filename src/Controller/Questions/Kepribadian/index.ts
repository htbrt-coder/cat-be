import { Request, Response, NextFunction } from "express";
import Responses from "../../../Utils/Helper/Response";
import KepribadianService from "../../../Service/Question/Kepribadian";
import { PayloadRequestKepribadianQuestionVO } from "../../../Types";
import { v4 as uuidv4 } from "uuid";

class Kepribadian {
    kepribadianService: KepribadianService;

    constructor() {
        this.kepribadianService = new KepribadianService();
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

            const Result = await this.kepribadianService.findAll(secureId, type);
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
            } as PayloadRequestKepribadianQuestionVO

            const Result = await this.kepribadianService.insertData(Payload);
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

            const Result = await this.kepribadianService.deleteQuestion(secureId);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
};

export default Kepribadian;