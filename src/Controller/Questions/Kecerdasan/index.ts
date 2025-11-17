import { Request, Response, NextFunction } from "express";
import Responses from "../../../Utils/Helper/Response";
import KecerdasanService from "../../../Service/Question/Kecerdasan";
import { PayloadRequestKecerdasanQuestionVO } from "../../../Types";
import { v4 as uuidv4 } from "uuid";
import Multer from "../../../Utils/Configs/multer";
import path from "path";
import fs from "fs";


class Kecerdasan {
    kecerdasanService: KecerdasanService;

    constructor() {
        this.kecerdasanService = new KecerdasanService();
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


            const Result = await this.kecerdasanService.findAll(secureId, type);
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
                    secureId: req.body.question?.secureId || "",
                    type: req.body.question?.type
                },
                answerList: [...req.body.answerList]
            } as PayloadRequestKecerdasanQuestionVO

            const Result = await this.kecerdasanService.insertData(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deleteQuestion(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Question Required"
            else if (!req.query?.question) throw "Question Required"
            else if (!req.query?.groupSecureId) throw "Group Question Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;
            const question = req.query?.question as string;
            const groupSecureId = req.query?.groupSecureId as string;

            const Result = await this.kecerdasanService.deleteQuestion(groupSecureId, secureId, question);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async uploadPhotos(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "Params SecureId Required";
            else if (!req.query?.question) throw "Question Name Required"
            else if (!req.query?.fileName) throw "File Name Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Upload = Multer.single('file')
            Upload(req, res, async (err: any) => {
                if (err) throw "Error Uploading File"

                const directory = path.join("static-img")
                Responses.success(res, { imageUri: req.file?.path.replace(directory, "") });
            })
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deletePhotos(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.secureId) throw "Params SecureId Required";
            else if (!req.body?.question) throw "Question Name Required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const pathUri = path.join(
                'static-img',
                'images',
                req.body.secureId as string,
                req.body.question as string,
                req.body.fileName as string,
            )
            console.log(pathUri)
            fs.unlinkSync(pathUri)
            Responses.success(res, pathUri);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
};

export default Kecerdasan;