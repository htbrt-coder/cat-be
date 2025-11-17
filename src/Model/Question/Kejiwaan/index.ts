import Database from "../../../Utils/Configs/db";
import { PayloadCreateKejiwaanQuestionVO, PayloadCreateKejiwaanAnswerVO } from "../../../Types";
import { KejiwaanModel } from "./index.d";

class Kejiwaan implements KejiwaanModel {
    public findAll(secureId: string): Promise<any> {
        const sql = `select 	kg.secureId as group_secureId,
                                kg.time as session_time,
                                kq.secureId as question_secureId,
                                kq.id as kq_id,
                                kq.question,
                                ka.secureId as answer_secureId,
                                ka.symbol,
                                ka.answer,
                                ka.value
                        from kejiwaan_question kq
                        left join kejiwaan_group kg on kq.id_group = kg.id
                        left join kejiwaan_answer ka on kq.id = ka.id_question
                        where kg.secureId = ?
                        order by kq.id, ka.id ASC;`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    };

    public findOne(secureId: string): Promise<any> {
        const sql = `select * from kejiwaan_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createQuestion(payload: PayloadCreateKejiwaanQuestionVO): Promise<any> {
        const sql = `insert into kejiwaan_question set ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateQuestion(payload: PayloadCreateKejiwaanQuestionVO): Promise<any> {
        const sql = `update kejiwaan_question set question = ? 
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.question, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteQuestion(secureId: string): Promise<any> {
        const sql = `delete from kejiwaan_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllAnswer(secureId: string): Promise<any> {
        const sql = `select * from kejiwaan_answer 
                                where id_question = (select id from kejiwaan_question where secureId = ?)`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createAnswer(payload: Array<PayloadCreateKejiwaanAnswerVO>): Promise<any> {
        const sql = `insert into 
                        kejiwaan_answer (id_question, secureId, answer, value, symbol) 
                        values ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.map(e => [e.id_question, e.secureId, e.answer, e.value, e.symbol])], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteAnswer(payload: Array<{ secureId: string }>): Promise<any> {
        const sql = `delete from kejiwaan_answer where secureId in ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [[payload.map(e => e?.secureId)]], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

};

export default Kejiwaan;