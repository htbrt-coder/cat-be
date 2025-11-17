import { PayloadCreateKecermatanSectionVO, PayloadCreateKecermatanQuestionVO, PayloadCreateKecermatanAnswerVO } from "../../../Types"
export interface KecermatanModel {
    findAll(secureId: string): Promise<any>
    findAllAnswer(secureId: string): Promise<any>
    findOneGroup(secureId: string): Promise<any>
    findOneSection(secureId: string): Promise<any>
    findOneQuestion(secureId: string): Promise<any>
    createSection(payload: PayloadCreateKecermatanSectionVO): Promise<any>
    createQuestion(payload: PayloadCreateKecermatanQuestionVO): Promise<any>
    createAnswer(payload: Array<PayloadCreateKecermatanAnswerVO>): Promise<any>
    deleteSection(secureId: string): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
    deleteAnswer(payload: Array<{ secureId: string }>): Promise<any>
};