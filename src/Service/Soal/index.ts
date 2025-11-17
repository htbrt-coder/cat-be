import SoalModel from "../../Model/Soal";
import KecerdasanGroupModel from "../../Model/Group/Kecerdasan";
import KecermatanGroupModel from "../../Model/Group/Kecermatan";
import NewKecermatanGroupModel from "../../Model/Group/New_Kecermatan";
import KepribadianGroupModel from "../../Model/Group/Kepribadian";
import KejiwaanGroupModel from "../../Model/Group/Kejiwaan";
import PeraturanModel from "../../Model/Peraturan";
import { SoalService } from "./index.d";

class Soal implements SoalService {
    soalModel: SoalModel;
    peraturanModel: PeraturanModel;
    kecermatanGroupModel: KecermatanGroupModel;
    newKecermatanGroupModel: NewKecermatanGroupModel;
    kecerdasanGroupModel: KecerdasanGroupModel;
    kejiwaanGroupModel: KejiwaanGroupModel;
    kepribadianGroupModel: KepribadianGroupModel;

    constructor() {
        this.soalModel = new SoalModel();
        this.peraturanModel = new PeraturanModel();
        this.kecermatanGroupModel = new KecermatanGroupModel();
        this.newKecermatanGroupModel = new NewKecermatanGroupModel();
        this.kecerdasanGroupModel = new KecerdasanGroupModel();
        this.kejiwaanGroupModel = new KejiwaanGroupModel();
        this.kepribadianGroupModel = new KepribadianGroupModel();
    }

    public async findAll(type: string): Promise<any> {
        try {
            let Soal: Array<any>;

            switch (type) {
                case 'kecerdasan':
                    Soal = await this.soalModel.findAllKecerdasan() as Array<any>
                    break;
                case 'kepribadian':
                    Soal = await this.soalModel.findAllKepribadian() as Array<any>
                    break;
                case 'kejiwaan':
                    Soal = await this.soalModel.findAllKejiwaan() as Array<any>
                    break;
                case 'kecermatan':
                    Soal = await this.soalModel.findAllKecermatan() as Array<any>
                    break;
                case 'new_kecermatan':
                    Soal = await this.soalModel.findAllNewKecermatan() as Array<any>
                    break;
                default:
                    throw "Type Required"
            }

            return Soal

        } catch (error) {
            throw error
        }
    }

    public async findCover(secureId: string, type: string): Promise<any> {
        try {
            let Result = {
                rules: {},
                group: {}
            } as {
                rules: any,
                group: {
                    secureId: string;
                    title: string;
                    description: string;
                    time: number;
                    time_interval: number;
                    total_soal: number;
                    total_section: number;
                    is_active: number;
                }
            }

            let ResultGroup: any;
            switch (type) {
                case 'kecerdasan':
                    [ResultGroup] = await this.kecerdasanGroupModel.findOne(secureId);
                    break;
                case 'kecermatan':
                    [ResultGroup] = await this.kecermatanGroupModel.findOne(secureId);
                    break;
                case 'new_kecermatan':
                    [ResultGroup] = await this.newKecermatanGroupModel.findOne(secureId);
                    break;
                case 'kejiwaan':
                    [ResultGroup] = await this.kejiwaanGroupModel.findOne(secureId);
                    break;
                case 'kepribadian':
                    [ResultGroup] = await this.kepribadianGroupModel.findOne(secureId);
                    break;
                default:
                    [ResultGroup] = await this.kecerdasanGroupModel.findOne(secureId);
                    break;
            }

            const ResultType = await this.peraturanModel.findByType(type)
            ResultType.map((e: any) => {
                Result.rules[e.type] = e.description
            })

            Result = {
                group: { ...ResultGroup },
                rules: Result.rules
            }

            return Result

        } catch (error) {
            throw error;
        }
    }
};

export default Soal;