import { PayloadPeraturanCreateVO } from "../../Types"

export interface PeraturanModel {
    findAll(): Promise<any>;
    findOne(secureId: string): Promise<any>;
    findByType(type: string): Promise<any>;
    createData(Payload: PayloadPeraturanCreateVO): Promise<any>
    updateData(Payload: PayloadPeraturanCreateVO): Promise<any>
}