import { Request, Response, NextFunction } from "express";
import Responses from "../../Utils/Helper/Response";
import NilaiService from "../../Service/Nilai";

class Nilai {
    nilaiService: NilaiService;

    constructor() {
        this.nilaiService = new NilaiService();
    }

    public async findAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Required";
            else if (!req.query?.type) throw "Type Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;
            const type = req.query?.type as string;

            const Result = await this.nilaiService.findAll(secureId, type);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertData(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.userSecureId) throw "SecureId Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                secureId: "",
                userSecureId: req.body?.userSecureId,
                type_nilai: req.body?.type_nilai,
                paket_soal: req.body?.paket_soal,
                nilai: req.body?.nilai,
                id_user: req.body?.id_user
            };

            const Result = await this.nilaiService.insertData(Payload);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async findAllKecermatan(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;

            const Result = await this.nilaiService.findAllKecermatan(secureId);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async findAllNewKecermatan(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.query?.secureId) throw "SecureId Required";
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const secureId = req.query?.secureId as string;

            const Result = await this.nilaiService.findAllNewKecermatan(secureId);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertDataKecermatan(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.secureId) throw "SecureId Required";
            else if (!req.body?.kecermatanVO || req.body.kecermatanVO.length == 0) throw "kecermatanVO required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                secureId: req.body.secureId,
                kecermatanVO: [...req.body.kecermatanVO]
            };

            const Result = await this.nilaiService.insertDataKecermatan(Payload.secureId, Payload.kecermatanVO);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async insertDataNewKecermatan(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            if (!req.body?.secureId) throw "SecureId Required";
            else if (!req.body?.kecermatanVO || req.body.kecermatanVO.length == 0) throw "kecermatanVO required"
        } catch (error) {
            return Responses.badRequest(res, error, next);
        }

        try {
            const Payload = {
                secureId: req.body.secureId,
                kecermatanVO: [...req.body.kecermatanVO]
            };

            const Result = await this.nilaiService.insertDataNewKecermatan(Payload.secureId, Payload.kecermatanVO);
            return Responses.success(res, Result);
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }

    public async deleteAll(req: Request, res: Response, next: NextFunction): Promise<any> {
        try {
            const Result = await this.nilaiService.deleteHistoryMark();
            return Responses.success(res, Result);
            
        } catch (error) {
            return Responses.failed(res, error, next);
        }
    }
}

export default Nilai;