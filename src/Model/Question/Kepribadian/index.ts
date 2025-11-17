import Database from "../../../Utils/Configs/db";
import { PayloadCreateKepribadianQuestionVO, PayloadCreateKepribadianAnswerVO } from "../../../Types";
import { KepribadianModel } from "./index.d";

class Kepribadian implements KepribadianModel {
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
                        from kepribadian_question kq
                        left join kepribadian_group kg on kq.id_group = kg.id
                        left join kepribadian_answer ka on kq.id = ka.id_question
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
        const sql = `select * from kepribadian_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createQuestion(payload: PayloadCreateKepribadianQuestionVO): Promise<any> {
        const sql = `insert into kepribadian_question set ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, payload, (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public updateQuestion(payload: PayloadCreateKepribadianQuestionVO): Promise<any> {
        const sql = `update kepribadian_question set question = ? 
                            where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.question, payload.secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteQuestion(secureId: string): Promise<any> {
        const sql = `delete from kepribadian_question where secureId = ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public findAllAnswer(secureId: string): Promise<any> {
        const sql = `select * from kepribadian_answer 
                                where id_question = (select id from kepribadian_question where secureId = ?)`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [secureId], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public createAnswer(payload: Array<PayloadCreateKepribadianAnswerVO>): Promise<any> {
        const sql = `insert into 
                        kepribadian_answer (id_question, secureId, answer, value, symbol) 
                        values ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [payload.map(e => [e.id_question, e.secureId, e.answer, e.value, e.symbol])], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

    public deleteAnswer(payload: Array<{ secureId: string }>): Promise<any> {
        // console.log([payload.map(e => e?.secureId)]);
        const sql = `delete from kepribadian_answer where secureId in ?`;

        return new Promise((resolve, reject) => {
            Database.query(sql, [[payload.map(e => e?.secureId)]], (err: any, response: any) => {
                if (!err) resolve(response)
                else reject(err)
            })
        });
    }

};

export default Kepribadian;