import { PayloadCreateKecerdasanQuestionVO, PayloadCreateKecerdasanAnswerVO } from "../../../Types";

export interface KecerdasanModel {
    findAll(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    createQuestion(payload: PayloadCreateKecerdasanQuestionVO): Promise<any>
    updateQuestion(payload: PayloadCreateKecerdasanQuestionVO): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
    createAnswer(payload: Array<PayloadCreateKecerdasanAnswerVO>): Promise<any>
    deleteAnswer(payload: Array<{ secureId: string }>): Promise<any>
};