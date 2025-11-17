import KepribadianModel from "../../../Model/Question/Kepribadian";
import KepribadianGroupModel from "../../../Model/Group/Kepribadian";
import { PayloadCreateKepribadianAnswerVO, PayloadCreateKepribadianQuestionVO, PayloadRequestKepribadianQuestionVO } from "../../../Types";
import { KepribadianService } from "./index.d";
import useFullFunction from "../../../Utils/Helper/UsefullFunction";
import { v4 as uuidv4 } from "uuid";

class Kepribadian implements KepribadianService {
    kepribadianModel: KepribadianModel;
    kepribadianGroupModel: KepribadianGroupModel;

    constructor() {
        this.kepribadianModel = new KepribadianModel();
        this.kepribadianGroupModel = new KepribadianGroupModel();
    }

    public async findAll(secureId: string, type: string): Promise<any> {
        try {
            const [KepribadianDetail] = await this.kepribadianGroupModel.findOne(secureId);
            if (!KepribadianDetail) throw "Group Not Found";

            const Kepribadian = await this.kepribadianModel.findAll(secureId);
            if (!Kepribadian) throw "Get Data Error";
            if (Kepribadian.length != 0) {
                let Result = [] as Array<{
                    secureId: string;
                    sessionTime: string;
                    question: {
                        secureId: string;
                        question: string;
                    };
                    answer: {
                        secureId: null;
                        answer: null;
                        symbol: null;
                        value: null;
                    };
                    modeAdd: boolean;
                    loadingDelete: boolean;
                    answerList: Array<{
                        secureId: string;
                        answer: string;
                        value: number;
                        symbol: string;
                    }>
                }>;

                Kepribadian.map((e: any, i: any) => {
                    const findIndexQuestion = Result.findIndex((e2: any) => e2.question?.secureId == e.question_secureId);

                    if (i == 0 || findIndexQuestion == -1) {
                        let pointer = i == 0 ? 0 : Result.length;

                        Result[pointer] = {
                            secureId: e.group_secureId,
                            sessionTime: e.session_time,
                            question: {
                                secureId: e.question_secureId,
                                question: e.question
                            },
                            answer: {
                                secureId: null,
                                answer: null,
                                symbol: null,
                                value: null,
                            },
                            modeAdd: false,
                            loadingDelete: false,
                            answerList: [
                                {
                                    secureId: e.answer_secureId,
                                    symbol: e.symbol,
                                    answer: e.answer,
                                    value: e.value
                                }
                            ]
                        }
                    }

                    else if (findIndexQuestion != -1) {
                        Result[Result.length - 1].answerList.push({
                            secureId: e.answer_secureId,
                            symbol: e.symbol,
                            answer: e.answer,
                            value: e.value
                        })
                    }
                })

                if (KepribadianDetail.is_random && type !== 'admin') Result = [...useFullFunction.randomizedArr(Result)]

                const ResultVO = {
                    secureId: KepribadianDetail.secureId,
                    title: KepribadianDetail.title,
                    description: KepribadianDetail.description,
                    time: KepribadianDetail.time,
                    is_active: KepribadianDetail.is_active,
                    type: KepribadianDetail.type,
                    is_random: KepribadianDetail.is_random,
                    result: [...Result]
                }

                return ResultVO;
            } else {
                const ResultVO = {
                    secureId: KepribadianDetail.secureId,
                    title: KepribadianDetail.title,
                    description: KepribadianDetail.description,
                    time: KepribadianDetail.time,
                    is_active: KepribadianDetail.is_active,
                    type: KepribadianDetail.type,
                    is_random: KepribadianDetail.is_random,
                    result: [...Kepribadian]
                }

                return ResultVO
            }
        } catch (error) {
            throw error;
        }
    }

    public async insertData(payload: PayloadRequestKepribadianQuestionVO): Promise<any> {
        try {
            const [Group] = await this.kepribadianGroupModel.findOne(payload.groupSecureId);
            if (!Group) throw "Group Not Found";

            let Question: any;
            let FindQuestion: any;
            let isUpdate: boolean;
            let payload_insert = {} as PayloadCreateKepribadianQuestionVO;

            // If there is no secureId than create it
            if (!payload.question.secureId) {
                isUpdate = false;
                payload_insert = {
                    id_group: Group.id,
                    secureId: uuidv4(),
                    question: payload.question.question,
                };

                Question = await this.kepribadianModel.createQuestion(payload_insert);
                if (!Question) throw "Create Question Error";

            } else {
                isUpdate = true;
                [FindQuestion] = await this.kepribadianModel.findOne(payload.question.secureId);
                if (!FindQuestion) throw "Question Not Found";

                payload_insert = {
                    id_group: Group.id,
                    secureId: payload.question.secureId,
                    question: payload.question.question,
                }

                Question = await this.kepribadianModel.updateQuestion(payload_insert);
                if (!Question) throw "Update Question Error";

            }


            // There is no update scenario, i use delete than create scenario to make sure data is clean
            // Delete Answer When they already created, i check it using secureId
            // Then re-create it 
            if (payload.answerList.every(e => e.secureId)) {
                const FindAnswer = await this.kepribadianModel.findAllAnswer(payload_insert.secureId);
                if (FindAnswer.length != 0) {
                    const Delete = await this.kepribadianModel.deleteAnswer(FindAnswer);
                    if (!Delete) throw "Delete Answer Error";
                }
            }

            const PayloadAnswer: Array<PayloadCreateKepribadianAnswerVO> = [];
            payload.answerList.map(e => {
                PayloadAnswer.push({
                    id_question: isUpdate ? FindQuestion.id : Question.insertId,
                    secureId: uuidv4(),
                    answer: e.answer,
                    value: e.value,
                    symbol: e.symbol,
                })
            });

            const Answer = await this.kepribadianModel.createAnswer(PayloadAnswer)
            if (!Answer) throw "Create Answer Error";

            const Result: any = {
                ...payload,
                modeAdd: false,
                loadingDelete: false,
                question: { question: payload_insert.question, secureId: payload_insert.secureId },
                answerList: [...PayloadAnswer.map(e => {
                    return {
                        secureId: e.secureId,
                        answer: e.answer,
                        value: e.value,
                        symbol: e.symbol,
                    }
                })]
            };

            return Result
        } catch (error) {
            throw error;
        }
    }

    public async deleteQuestion(secureId: string): Promise<any> {
        try {
            const Question = await this.kepribadianModel.deleteQuestion(secureId);
            if (!Question) throw "Delete Data Error";

            return true;
        } catch (error) {
            throw error;
        }
    }

}

export default Kepribadian;