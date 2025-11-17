import { Request, Response, NextFunction } from "express";
import Responses from "../../../Utils/Helper/Response";
import KecermatanService from "../../../Service/Question/Kecermatan";
import { PayloadCreateKecermatanSectionVO, PayloadRequestKecermatanQuestionVO } from "../../../Types";

class Kecermatan {
    kecermatanService: KecermatanService

    constructor() {
        this.kecermatanService = new KecermatanService();
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


            const Result = await this.kecermatanService.findAll(secureId, type);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertSection(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.groupSecureId) throw "SecureId Group Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                groupSecureId: req.body.groupSecureId,
                secureId: req.body?.secureId || "",
                title: req.body?.title,
                table_name: req.body?.table_name,
                first_row: req.body?.first_row,
                second_row: req.body?.second_row,
                id_group: ""
            } as PayloadCreateKecermatanSectionVO;

            const Result = await this.kecermatanService.insertSection(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertQuestion(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.sectionSecureId) throw "SecureId Section Required";
            else if (req.body?.answerList.length == 0) throw "Answer List Required at least 2 answer's"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                sectionSecureId: req.body.sectionSecureId,
                secureId: req.body?.secureId || "",
                question: req.body.question,
                answerList: [...req.body.answerList]
            } as PayloadRequestKecermatanQuestionVO

            const Result = await this.kecermatanService.insertQuestion(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deleteSection(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Section Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;

            const Result = await this.kecermatanService.deleteSection(secureId);
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

            const Result = await this.kecermatanService.deleteQuestion(secureId);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
}

export default Kecermatan;