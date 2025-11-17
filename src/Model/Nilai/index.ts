import Database from "../../Utils/Configs/db";
import { PayloadCreateNilaiKecermatanVO, PayloadCreateNilaiVO } from "../../Types";
import { NilaiModel } from "./index.d";

class Nilai implements NilaiModel {
    public findAll(secureId: string, type: string): Promise<any> {
        const sql = `select secureId,
                            type_nilai,
                            paket_soal,
                            nilai,
                            createdDate
                        from daftar_nilai
                        where id_user = 
                            (select id 
                                from User 
                                where secureId = ?) 
                        AND type_nilai = ?
                        ORDER BY createdDate DESC`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId, type], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public insertData(payload: PayloadCreateNilaiVO): Promise<any> {
        const sql = `insert into 
                            daftar_nilai (secureId, type_nilai, paket_soal, nilai, id_user, createdDate) 
                            values (?, ?, ?, ?, ?, now())`

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.secureId, payload.type_nilai, payload.paket_soal, payload.nilai, payload.id_user], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        })
    }

    public findAllKecermatan(secureId: string): Promise<any> {
        const sql = `select 	secureId,
                                GROUP_CONCAT(DISTINCT paket_soal) as paket_soal,
                                group_concat(section) as section,
                                group_concat(benar) as benar,
                                GROUP_CONCAT(salah) as salah,
                                GROUP_CONCAT(tidak_dijawab) as tidak_dijawab,
                                group_concat(total) as total,
                                GROUP_CONCAT(DISTINCT createdDate) as createdDate
                        from daftar_nilai_kecermatan
                        where id_user = (select id from User where secureId = ?)
                        group by secureId
                        order by createdDate DESC;`

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllNewKecermatan(secureId: string): Promise<any> {
        const sql = `select 	secureId,
                                GROUP_CONCAT(DISTINCT paket_soal) as paket_soal,
                                group_concat(section) as section,
                                group_concat(benar) as benar,
                                GROUP_CONCAT(salah) as salah,
                                GROUP_CONCAT(tidak_dijawab) as tidak_dijawab,
                                group_concat(total) as total,
                                GROUP_CONCAT(DISTINCT createdDate) as createdDate
                        from daftar_nilai_new_kecermatan
                        where id_user = (select id from User where secureId = ?)
                        group by secureId
                        order by createdDate DESC;`

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public insertDataKecermatan(payload: Array<PayloadCreateNilaiKecermatanVO>): Promise<any> {
        const sql = `insert into 
                            daftar_nilai_kecermatan 
                            (secureId, paket_soal, section, benar, salah, tidak_dijawab, total, id_user, createdDate) 
                            values ?`

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.map(e => [e.secureId, e.paket_soal, e.section, e.benar, e.salah, e.tidak_dijawab, e.total, e.id_user, new Date()])], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        })
    }

    public insertDataNewKecermatan(payload: Array<PayloadCreateNilaiKecermatanVO>): Promise<any> {
        const sql = `insert into 
                            daftar_nilai_new_kecermatan 
                            (secureId, paket_soal, section, benar, salah, tidak_dijawab, total, id_user, createdDate) 
                            values ?`

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.map(e => [e.secureId, e.paket_soal, e.section, e.benar, e.salah, e.tidak_dijawab, e.total, e.id_user, new Date()])], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        })
    }

    public deleteHistoryMarkNewKecermatan(): Promise<any> {
        const sql = `delete from daftar_nilai_new_kecermatan`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteHistoryMarkKecermatan(): Promise<any> {
        const sql = `delete from daftar_nilai_kecermatan`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
    public deleteHistoryMark(): Promise<any> {
        const sql = `delete from daftar_nilai`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
}

export default Nilai;