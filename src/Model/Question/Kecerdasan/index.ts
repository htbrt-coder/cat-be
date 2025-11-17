import Database from "../../../Utils/Configs/db";
import { PayloadCreateKecerdasanQuestionVO, PayloadCreateKecerdasanAnswerVO } from "../../../Types";
import { KecerdasanModel } from "./index.d";

class Kecerdasan implements KecerdasanModel {
    public findAll(secureId: string): Promise<any> {
        const sql = `select 	kg.secureId as group_secureId,
                                kg.time as session_time,
                                kq.secureId as question_secureId,
                                kq.id as kq_id,
                                kq.question,
                                kq.type as question_type,
                                ka.secureId as answer_secureId,
                                ka.symbol,
                                ka.answer,
                                ka.value,
                                ka.type
                        from kecerdasan_question kq
                        left join kecerdasan_group kg on kq.id_group = kg.id
                        left join kecerdasan_answer ka on kq.id = ka.id_question
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
        const sql = `select * from kecerdasan_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createQuestion(payload: PayloadCreateKecerdasanQuestionVO): Promise<any> {
        const sql = `insert into kecerdasan_question set ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateQuestion(payload: PayloadCreateKecerdasanQuestionVO): Promise<any> {
        const sql = `update kecerdasan_question set question = ?, type = ? 
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.question, payload.type, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteQuestion(secureId: string): Promise<any> {
        const sql = `delete from kecerdasan_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllAnswer(secureId: string): Promise<any> {
        const sql = `select * from kecerdasan_answer 
                                where id_question = (select id from kecerdasan_question where secureId = ?)`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createAnswer(payload: Array<PayloadCreateKecerdasanAnswerVO>): Promise<any> {
        const sql = `insert into 
                        kecerdasan_answer (id_question, secureId, answer, value, symbol, type) 
                        values ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.map(e => [e.id_question, e.secureId, e.answer, e.value, e.symbol, e.type])], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteAnswer(payload: Array<{ secureId: string }>): Promise<any> {
        // console.log([payload.map(e => e?.secureId)]);
        const sql = `delete from kecerdasan_answer where secureId in ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [[payload.map(e => e?.secureId)]], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

};

export default Kecerdasan;