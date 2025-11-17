import { PayloadPeraturanCreateVO } from "../../Types";

export interface PeraturanService {
    findAll(): Promise<any>;
    insertData(payload: PayloadPeraturanCreateVO): Promise<any>;
}
