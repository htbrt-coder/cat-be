import Database from "../../Utils/Configs/db";
import { SoalModel } from "./index.d";

class Soal implements SoalModel {
    public findAllKecerdasan() {
        const sql = `select 
                        kg.secureId, 
                        kg.title, 
                        kg.description, 
                        kg.time, 
                        kg.is_active, 
                        count(kq.id) as soal
                    from kecerdasan_group kg
                    left join kecerdasan_question kq on kq.id_group = kg.id
                    where is_active = true
                    group by kg.id`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllKecermatan() {
        const sql = `SELECT 
                        kg.secureId,
                        kg.title,
                        kg.description,
                        kg.time,
                        count(kq.id) as soal,
                        count(DISTINCT ks.id) as section,
                        kg.is_active
                        FROM kecermatan_group kg
                    left join kecermatan_section ks on kg.id = ks.id_group
                    left join kecermatan_question kq on ks.id = kq.id_section
                    where is_active = true
                    group by kg.id;`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllNewKecermatan() {
        const sql = `SELECT 
                        kg.secureId,
                        kg.title,
                        kg.description,
                        kg.time,
                        kg.time_interval,
                        count(kq.id) as soal,
                        count(DISTINCT ks.id) as section,
                        kg.is_active
                        FROM new_kecermatan_group kg
                    left join new_kecermatan_section ks on kg.id = ks.id_group
                    left join new_kecermatan_question kq on ks.id = kq.id_section
                    where is_active = true
                    group by kg.id;`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllKejiwaan() {
        const sql = `select
                        kg.secureId, 
                        kg.title, 
                        kg.description, 
                        kg.time, 
                        kg.is_active, 
                        count(kq.id) as soal
                    from kejiwaan_group kg
                    left join kejiwaan_question kq on kq.id_group = kg.id
                    where is_active = true
                    group by kg.id`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllKepribadian() {
        const sql = `select 
                        kg.secureId, 
                        kg.title, 
                        kg.description, 
                        kg.time, 
                        kg.is_active, 
                        kg.type,
                        count(kq.id) as soal
                    from kepribadian_group kg
                    left join kepribadian_question kq on kq.id_group = kg.id
                    where is_active = true
                    group by kg.id`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
};

export default Soal;