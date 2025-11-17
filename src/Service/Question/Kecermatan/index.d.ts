import { PayloadCreateKecermatanSectionVO } from "../../../Types"
export interface KecermatanService {
    findAll(secureId: string, type: string): Promise<any>
    insertSection(payload: PayloadCreateKecermatanSectionVO): Promise<any>
    deleteSection(secureId: string): Promise<any>
    deleteQuestion(secureId: string): Promise<any>
};