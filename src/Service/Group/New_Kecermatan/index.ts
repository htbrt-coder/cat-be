import NewKecermatanModel from "../../../Model/Group/New_Kecermatan";
import { PayloadActivationVO, PayloadCreateNewKecermatanVO } from "../../../Types";
import { KecermatanService } from "./index.d";

class New_Kecermatan implements KecermatanService {
    newKecermatanModel: NewKecermatanModel;

    constructor() {
        this.newKecermatanModel = new NewKecermatanModel();
    }

    public async createData(payload: PayloadCreateNewKecermatanVO): Promise<any> {
        try {
            const Kecermatan = await this.newKecermatanModel.createData(payload);
            if (!Kecermatan) throw "Create Group Kecermatan Gagal";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateData(payload: PayloadCreateNewKecermatanVO): Promise<any> {
        try {
            const [Kecermatan] = await this.newKecermatanModel.findOne(payload.secureId);
            if (!Kecermatan) throw "Data Not Found";

            const Update = await this.newKecermatanModel.updateData(payload);
            if (!Update) throw "Update Data Kecermatan Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async activation(payload: PayloadActivationVO): Promise<any> {
        try {
            const Activation = await this.newKecermatanModel.activation(payload);
            if (!Activation) throw "Activation Error";

            return true
        } catch (error) {
            throw error;
        }
    }

    public async deleteData(secureId: string): Promise<any> {
        try {
            const Kecermatan = await this.newKecermatanModel.deleteData(secureId);
            if (!Kecermatan) throw "Delete Data Error";

            return true
        } catch (error) {
            throw error;

        }
    }

    public async findAll(search: string = ""): Promise<any> {
        try {
            const Kecermatan = await this.newKecermatanModel.findAll(search);
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

export default New_Kecermatan;