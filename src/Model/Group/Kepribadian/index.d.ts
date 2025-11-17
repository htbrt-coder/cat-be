import { PayloadCreateKepribadianVO } from "../../../Types"

export interface KepribadianModel {
    createData(payload: PayloadCreateKepribadianVO): Promise<any>
    updateData(payload: PayloadCreateKepribadianVO): Promise<any>
    activation(payload: PayloadActivationVO): Promise<any>
    deleteData(secureId: string): Promise<any>
    findOne(secureId: string): Promise<any>
    findAll(search: string): Promise<any>
}