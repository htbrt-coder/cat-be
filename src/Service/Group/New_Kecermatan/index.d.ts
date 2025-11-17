import { PayloadCreateKecermatanVO, PayloadActivationVO } from "../../../Types"

export interface KecermatanService {
    createData(payload: PayloadCreateKecermatanVO): Promise<any>
    updateData(payload: PayloadCreateKecermatanVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    findAll(search: string): Promise<any>
}