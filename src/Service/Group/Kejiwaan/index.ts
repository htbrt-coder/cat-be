import KejiwaanModel from "../../../Model/Group/Kejiwaan";
import { PayloadActivationVO, PayloadCreateKejiwaanVO } from "../../../Types";
import { KejiwaanService } from "./index.d";

class Kejiwaan implements KejiwaanService {
    kejiwaanModel: KejiwaanModel;

    constructor() {
        this.kejiwaanModel = new KejiwaanModel();
    }

    public async createData(payload: PayloadCreateKejiwaanVO): Promise<any> {
        try {
            const Kejiwaan = await this.kejiwaanModel.createData(payload);
            if (!Kejiwaan) throw "Create Group Kejiwaan Gagal";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateData(payload: PayloadCreateKejiwaanVO): Promise<any> {
        try {
            const [Kejiwaan] = await this.kejiwaanModel.findOne(payload.secureId);
            if (!Kejiwaan) throw "Data Not Found";

            const Update = await this.kejiwaanModel.updateData(payload);
            if (!Update) throw "Update Data Kejiwaan Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async activation(payload: PayloadActivationVO): Promise<any> {
        try {
            const Activation = await this.kejiwaanModel.activation(payload);
            if (!Activation) throw "Activation Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async deleteData(secureId: string): Promise<any> {
        try {
            const Kejiwaan = await this.kejiwaanModel.deleteData(secureId);
            if (!Kejiwaan) throw "Delete Data Error";

            return true
        } catch (error) {
            throw error;

        }
    }

    public async findAll(search: string = ""): Promise<any> {
        try {
            const Kejiwaan = await this.kejiwaanModel.findAll(search);
            if (!Kejiwaan) throw "Get Data Error";

            Kejiwaan.map((e: any) => {
                e.modeAdd = false
                e.loadingDelete = false
                e.loadingActivate = false
                e.loadingEdit = false
            });

            return Kejiwaan
        } catch (error) {
            throw error;

        }
    }

};

export default Kejiwaan;