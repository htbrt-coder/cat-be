import { PayloadCreateKejiwaanQuestionVO, PayloadCreateKejiwaanAnswerVO } from "../../../Types";

export interface KejiwaanModel {
    findAll(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    createQuestion(payload: PayloadCreateKejiwaanQuestionVO): Promise<any>
    updateQuestion(payload: PayloadCreateKejiwaanQuestionVO): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
    createAnswer(payload: Array<PayloadCreateKejiwaanAnswerVO>): Promise<any>
    deleteAnswer(payload: Array<{ secureId: string }>): Promise<any>
};