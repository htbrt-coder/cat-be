import { PayloadCreateKepribadianQuestionVO, PayloadCreateKepribadianAnswerVO } from "../../../Types";

export interface KepribadianModel {
    findAll(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    createQuestion(payload: PayloadCreateKepribadianQuestionVO): Promise<any>
    updateQuestion(payload: PayloadCreateKepribadianQuestionVO): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
    createAnswer(payload: Array<PayloadCreateKepribadianAnswerVO>): Promise<any>
    deleteAnswer(payload: Array<{ secureId: string }>): Promise<any>
};