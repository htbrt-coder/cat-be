import Database from "../../../Utils/Configs/db";
import { KecermatanModel } from "./index.d";
import { PayloadActivationVO, PayloadCreateNewKecermatanVO } from "../../../Types";

class New_Kecermatan implements KecermatanModel {
    public createData(payload: PayloadCreateNewKecermatanVO): Promise<any> {
        const sql = `INSERT INTO new_kecermatan_group SET ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateData(payload: PayloadCreateNewKecermatanVO): Promise<any> {
        const sql = `update new_kecermatan_group set
                            title = ?,
                            description = ?,
                            time = ?,
                            time_interval = ?,
                            is_random = ?
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.title, payload.description, payload.time, payload.time_interval, payload.is_random, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public activation(payload: PayloadActivationVO): Promise<any> {
        const sql = `update new_kecermatan_group set
                            is_active = ?
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.is_active, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteData(secureId: string): Promise<any> {
        const sql = `delete from new_kecermatan_group
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findOne(secureId: string): Promise<any> {
        const sql = `SELECT 
                        kg.id,
                        kg.secureId,
                        kg.title,
                        kg.description,
                        kg.time,
                        kg.time_interval,
                        count(kq.id) as total_soal,
                        count(DISTINCT ks.id) as total_section,
                        kg.is_active,
                        kg.is_random
                        FROM new_kecermatan_group kg
                    left join new_kecermatan_section ks on kg.id = ks.id_group
                    left join new_kecermatan_question kq on ks.id = kq.id_section
                    where kg.secureId = ?
                    group by kg.id`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAll(search: string): Promise<any> {
        const sql = `SELECT 
                        kg.secureId,
                        kg.title,
                        kg.description,
                        kg.time,
                        kg.time_interval,
                        count(kq.id) as total_soal,
                        count(DISTINCT ks.id) as total_section,
                        kg.is_active,
                        kg.is_random
                        FROM new_kecermatan_group kg
                    left join new_kecermatan_section ks on kg.id = ks.id_group
                    left join new_kecermatan_question kq on ks.id = kq.id_section
                    where kg.title LIKE '%${search}%'
                    group by kg.id`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
};

export default New_Kecermatan;