import { PayloadCreateKepribadianVO, PayloadActivationVO } from "../../../Types"

export interface KepribadianService {
    createData(payload: PayloadCreateKepribadianVO): Promise<any>
    updateData(payload: PayloadCreateKepribadianVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    findAll(search: string): Promise<any>
}