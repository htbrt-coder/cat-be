import PeraturanModel from "../../Model/Peraturan";
import { PeraturanService } from "./index.d";
import { PayloadPeraturanCreateVO } from "../../Types";
import { v4 as uuidv4 } from "uuid";

class Peraturan implements PeraturanService {
    peraturanModel: PeraturanModel;

    constructor() {
        this.peraturanModel = new PeraturanModel();
    }

    public async findAll(): Promise<any> {
        try {
            const Result = await this.peraturanModel.findAll();

            let Obj = {} as any;
            Result.forEach((e: any) => {
                Obj[`${e.rule_type}VO`] = {
                    ...Obj[`${e.rule_type}VO`],
                    [e.type]: {
                        secureId: e.secureId,
                        description: e.description
                    }
                }
            })

            return Obj;
        } catch (error) {
            throw error;
        }
    }

    public async insertData(payload: PayloadPeraturanCreateVO): Promise<any> {
        try {
            if (!payload.secureId) {
                payload.secureId = uuidv4();
                const Peraturan = await this.peraturanModel.createData(payload);
                if (!Peraturan) throw "Create Data Peraturan Error"
            } else {
                const [Peraturan] = await this.peraturanModel.findOne(payload.secureId);
                if (!Peraturan) throw "Peraturan Not Found"

                const Result = await this.peraturanModel.updateData(payload);
                if (!Result) throw "Update Data Peraturan Error"
            }

            return true
        } catch (error) {
            throw error;
        }
    }
}

export default Peraturan;