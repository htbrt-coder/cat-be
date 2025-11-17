import Database from "../../../Utils/Configs/db";
import { KepribadianModel } from "./index.d";
import { PayloadActivationVO, PayloadCreateKepribadianVO } from "../../../Types";

class Kepribadian implements KepribadianModel {
    public createData(payload: PayloadCreateKepribadianVO): Promise<any> {
        const sql = `INSERT INTO kepribadian_group SET ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateData(payload: PayloadCreateKepribadianVO): Promise<any> {
        const sql = `update kepribadian_group set
                            title = ?,
                            description = ?,
                            time = ?,
                            type = ?,
                            is_random = ?
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.title, payload.description, payload.time, payload.type, payload.is_random, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public activation(payload: PayloadActivationVO): Promise<any> {
        const sql = `update kepribadian_group set
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
        const sql = `delete from kepribadian_group
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
                        title,
                        description,
                        time,
                        is_active,
                        is_random,
                        count(id_group) as total_soal,
                        type
                        FROM kepribadian_group kg
                    left join kepribadian_question kq on kg.id = kq.id_group
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
                        title,
                        description,
                        time,
                        is_active,
                        is_random,
                        count(id_group) as total_soal,
                        type
                        FROM kepribadian_group kg
                    left join kepribadian_question kq on kg.id = kq.id_group
                    where title LIKE '%${search}%'
                    group by kg.id;`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
};

export default Kepribadian;