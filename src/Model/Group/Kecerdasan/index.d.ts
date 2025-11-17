import { PayloadCreateKecerdasanVO } from "../../../Types"

export interface KecerdasanModel {
    createData(payload: PayloadCreateKecerdasanVO): Promise<any>
    updateData(payload: PayloadCreateKecerdasanVO): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    findAll(search: string): Promise<any>
}