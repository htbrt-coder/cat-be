import Database from "../../Utils/Configs/db";
import { PayloadListUserVO, PayloadUserCreateVO, PayloadUserStatusVO, PayloadUserStatusUsernameVO } from "../../Types";
import { UserModel } from "./index.d";

class User implements UserModel {
    public findByUsername(username: string): Promise<any> {
        const sql = `SELECT secureId,
                            username,
                            nama_lengkap,
                            password,
                            type
                            FROM 
                            User where username = ?`;
        return new Promise((resolve, reject) => {
            Database.query(sql, [username], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findBySecureId(secureId: string): Promise<any> {
        const sql = `SELECT id,
                            secureId,
                            username,
                            nama_lengkap,
                            password,
                            type
                            FROM 
                            User where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAll(payload: PayloadListUserVO): Promise<any> {
        const sql = `SELECT secureId,
                            username,
                            password,
                            nama_lengkap,
                            is_online,
                            type
                            FROM
                            User where username LIKE ? order by is_online DESC`
        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.search], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createUser(PayloadUser: PayloadUserCreateVO): Promise<any> {
        const sql = `INSERT INTO User SET ?`;
        return new Promise((resolve, reject) => {
            Database.query(sql, PayloadUser, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateUser(PayloadUser: PayloadUserCreateVO): Promise<any> {
        const sql = `update User set 
                            username = ?,
                            password = ?,
                            nama_lengkap = ?
                        where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [PayloadUser.username, PayloadUser.password, PayloadUser.nama_lengkap, PayloadUser.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateStatus(PayloadUser: PayloadUserStatusVO): Promise<any> {
        const sql = `update User set 
                            is_online = ?
                        where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [PayloadUser.is_online, PayloadUser.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateStatusByUsername(PayloadUser: PayloadUserStatusUsernameVO): Promise<any> {
        const sql = `update User set 
                            is_online = ?
                        where username = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [PayloadUser.is_online, PayloadUser.username], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteUser(payload: Array<PayloadUserCreateVO>): Promise<any> {
        const sql = `DELETE FROM User where secureId in ?`
        return new Promise((resolve, reject) => {
            Database.query(sql, [[payload.map(e => e.secureId)]], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }
};

export default User;