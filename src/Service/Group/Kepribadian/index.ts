import KepribadianModel from "../../../Model/Group/Kepribadian";
import { PayloadActivationVO, PayloadCreateKepribadianVO } from "../../../Types";
import { KepribadianService } from "./index.d";

class Kepribadian implements KepribadianService {
    kepribadianModel: KepribadianModel;

    constructor() {
        this.kepribadianModel = new KepribadianModel();
    }

    public async createData(payload: PayloadCreateKepribadianVO): Promise<any> {
        try {
            const Kepribadian = await this.kepribadianModel.createData(payload);
            if (!Kepribadian) throw "Create Group Kepribadian Gagal";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateData(payload: PayloadCreateKepribadianVO): Promise<any> {
        try {
            const [Kepribadian] = await this.kepribadianModel.findOne(payload.secureId);
            if (!Kepribadian) throw "Data Not Found";

            const Update = await this.kepribadianModel.updateData(payload);
            if (!Update) throw "Update Data Kepribadian Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async activation(payload: PayloadActivationVO): Promise<any> {
        try {
            const Activation = await this.kepribadianModel.activation(payload);
            if (!Activation) throw "Activation Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async deleteData(secureId: string): Promise<any> {
        try {
            const Kepribadian = await this.kepribadianModel.deleteData(secureId);
            if (!Kepribadian) throw "Delete Data Error";

            return true
        } catch (error) {
            throw error;

        }
    }

    public async findAll(search: string = ""): Promise<any> {
        try {
            const Kepribadian = await this.kepribadianModel.findAll(search);
            if (!Kepribadian) throw "Get Data Error";

            Kepribadian.map((e: any) => {
                e.modeAdd = false
                e.loadingDelete = false
                e.loadingActivate = false
                e.loadingEdit = false
            });

            return Kepribadian
        } catch (error) {
            throw error;

        }
    }

};

export default Kepribadian;