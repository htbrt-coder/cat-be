import { PayloadCreateKejiwaanVO, PayloadActivationVO } from "../../../Types"

export interface KejiwaanService {
    createData(payload: PayloadCreateKejiwaanVO): Promise<any>
    updateData(payload: PayloadCreateKejiwaanVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    findAll(search: string): Promise<any>
}