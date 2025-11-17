import KecermatanModel from "../../../Model/Group/Kecermatan";
import { PayloadActivationVO, PayloadCreateKecermatanVO } from "../../../Types";
import { KecermatanService } from "./index.d";

class Kecermatan implements KecermatanService {
    kecermatanModel: KecermatanModel;

    constructor() {
        this.kecermatanModel = new KecermatanModel();
    }

    public async createData(payload: PayloadCreateKecermatanVO): Promise<any> {
        try {
            const Kecermatan = await this.kecermatanModel.createData(payload);
            if (!Kecermatan) throw "Create Group Kecermatan Gagal";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateData(payload: PayloadCreateKecermatanVO): Promise<any> {
        try {
            const [Kecermatan] = await this.kecermatanModel.findOne(payload.secureId);
            if (!Kecermatan) throw "Data Not Found";

            const Update = await this.kecermatanModel.updateData(payload);
            if (!Update) throw "Update Data Kecermatan Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async activation(payload: PayloadActivationVO): Promise<any> {
        try {
            const Activation = await this.kecermatanModel.activation(payload);
            if (!Activation) throw "Activation Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async deleteData(secureId: string): Promise<any> {
        try {
            const Kecermatan = await this.kecermatanModel.deleteData(secureId);
            if (!Kecermatan) throw "Delete Data Error";

            return true
        } catch (error) {
            throw error;

        }
    }

    public async findAll(search: string = ""): Promise<any> {
        try {
            const Kecermatan = await this.kecermatanModel.findAll(search);
            if (!Kecermatan) throw "Get Data Error";

            Kecermatan.map((e: any) => {
                e.modeAdd = false
                e.loadingDelete = false
                e.loadingActivate = false
                e.loadingEdit = false
            });

            return Kecermatan
        } catch (error) {
            throw error;

        }
    }

};

export default Kecermatan;