import { PayloadCreateKecermatanVO, PayloadActivationVO } from "../../../Types"

export interface KecermatanModel {
    createData(payload: PayloadCreateKecermatanVO): Promise<any>
    updateData(payload: PayloadCreateKecermatanVO): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    findAll(search: string): Promise<any>
}