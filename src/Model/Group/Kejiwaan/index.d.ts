import { PayloadCreateKejiwaanVO, PayloadActivationVO } from "../../../Types"

export interface KejiwaanModel {
    createData(payload: PayloadCreateKejiwaanVO): Promise<any>
    updateData(payload: PayloadCreateKejiwaanVO): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    findAll(search: string): Promise<any>
}