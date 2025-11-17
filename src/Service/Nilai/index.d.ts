import { PayloadCreateNilaiVO, PayloadCreateNilaiKecermatanVO } from "../../Types";
export interface NilaiService {
    findAll(secureId: string, type: string): Promise<any>
    insertData(Payload: PayloadCreateNilaiVO): Promise<any>
    findAllKecermatan(secureId: string): Promise<any>
    findAllNewKecermatan(secureId: string): Promise<any>
    insertDataKecermatan(secureId: string, Payload: Array<PayloadCreateNilaiKecermatanVO>): Promise<any>
    insertDataNewKecermatan(secureId: string, Payload: Array<PayloadCreateNilaiKecermatanVO>): Promise<any>
    deleteHistoryMark(): Promise<any>
}
