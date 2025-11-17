import KecerdasanModel from "../../../Model/Group/Kecerdasan";
import { PayloadActivationVO, PayloadCreateKecerdasanVO } from "../../../Types";
import { KecerdasanService } from "./index.d";

class Kecerdasan implements KecerdasanService {
    kecerdasanModel: KecerdasanModel;

    constructor() {
        this.kecerdasanModel = new KecerdasanModel();
    }

    public async createData(payload: PayloadCreateKecerdasanVO): Promise<any> {
        try {
            const Kecerdasan = await this.kecerdasanModel.createData(payload);
            if (!Kecerdasan) throw "Create Group Kecerdasan Gagal";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateData(payload: PayloadCreateKecerdasanVO): Promise<any> {
        try {
            const [Kecerdasan] = await this.kecerdasanModel.findOne(payload.secureId);
            if (!Kecerdasan) throw "Data Not Found";

            const Update = await this.kecerdasanModel.updateData(payload);
            if (!Update) throw "Update Data Kecerdasan Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async activation(payload: PayloadActivationVO): Promise<any> {
        try {
            const Activation = await this.kecerdasanModel.activation(payload);
            if (!Activation) throw "Activation Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async deleteData(secureId: string): Promise<any> {
        try {
            const Kecerdasan = await this.kecerdasanModel.deleteData(secureId);
            if (!Kecerdasan) throw "Delete Data Error";

            return true
        } catch (error) {
            throw error;

        }
    }

    public async findAll(search: string = ""): Promise<any> {
        try {
            const Kecerdasan = await this.kecerdasanModel.findAll(search);
            if (!Kecerdasan) throw "Get Data Error";

            Kecerdasan.map((e: any) => {
                e.modeAdd = false
                e.loadingDelete = false
                e.loadingActivate = false
                e.loadingEdit = false
            });

            return Kecerdasan
        } catch (error) {
            throw error;

        }
    }

    public async findOne(secureId: string): Promise<any> {
        try {
            const [Kecerdasan] = await this.kecerdasanModel.findOne(secureId);
            if (!Kecerdasan) throw "Data Not Found";

            return Kecerdasan
        } catch (error) {
            throw error;
        }
    }

};

export default Kecerdasan;