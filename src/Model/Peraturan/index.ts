import Database from "../../Utils/Configs/db";
import { PeraturanModel } from "./index.d";
import { PayloadPeraturanCreateVO } from "../../Types";

class Peraturan implements PeraturanModel {
    public findAll(): Promise<any> {
        const sql = `select 
                            secureId,
                            type,
                            description,
                            rule_type
                    from peraturan`;

        return new Promise((resolve, reject) => {
            Database.query(sql, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findOne(secureId: string): Promise<any> {
        const sql = `SELECT * FROM peraturan where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findByType(type: string): Promise<any> {
        const sql = `SELECT secureId,
                            type,
                            description
                            FROM peraturan 
                            where rule_type = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [type], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createData(payload: PayloadPeraturanCreateVO): Promise<any> {
        const sql = `INSERT INTO peraturan SET ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateData(payload: PayloadPeraturanCreateVO): Promise<any> {
        const sql = `update peraturan set 
                            type = ?,
                            description = ?
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.type, payload.description, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
}

export default Peraturan;