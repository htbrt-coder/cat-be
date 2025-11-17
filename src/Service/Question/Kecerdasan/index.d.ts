import { PayloadRequestKecerdasanQuestionVO } from "../../../Types";
export interface KecerdasanService {
    findAll(secureId: string, type: string): Promise<any>
    insertData(payload: PayloadRequestKecerdasanQuestionVO): Promise<any>
    deleteQuestion(groupSecureId: string, secureId: string, pertanyaanNo: string): Promise<any>
};