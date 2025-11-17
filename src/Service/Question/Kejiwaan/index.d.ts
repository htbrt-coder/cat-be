import { PayloadRequestKejiwaanQuestionVO } from "../../../Types";
export interface KejiwaanService {
    findAll(secureId: string, type: string): Promise<any>
    insertData(payload: PayloadRequestKejiwaanQuestionVO): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
};