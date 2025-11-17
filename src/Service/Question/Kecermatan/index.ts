import KecermatanModel from "../../../Model/Question/Kecermatan";
import KecermatanGroupModel from "../../../Model/Group/Kecermatan";
import { KecermatanService } from "./index.d";
import {
    PayloadCreateKecermatanQuestionVO,
    PayloadRequestKecermatanQuestionVO,
    PayloadCreateKecermatanSectionVO,
    PayloadCreateKecermatanAnswerVO
} from "../../../Types"
import useFullFunction from "../../../Utils/Helper/UsefullFunction";
import { v4 as uuidv4 } from "uuid";
class Kecermatan implements KecermatanService {
    kecermatanModel: KecermatanModel;
    kecermatanGroupModel: KecermatanGroupModel;

    constructor() {
        this.kecermatanModel = new KecermatanModel();
        this.kecermatanGroupModel = new KecermatanGroupModel();
    }

    public async findAll(secureId: string, type: string): Promise<any> {
        try {
            const [KecermatanDetail] = await this.kecermatanGroupModel.findOne(secureId);
            if (!KecermatanDetail) throw "Group Not Found";

            const Kecermatan = await this.kecermatanModel.findAll(secureId);
            if (!Kecermatan) throw "Get Data Error";

            if (Kecermatan.length != 0) {
                let Result = [] as Array<{
                    secureId: string;
                    title: string;
                    tableName: string;
                    firstRow: string;
                    secondRow: string;
                    modeAdd: boolean;
                    loadingSubmit: boolean;
                    loadingDelete: boolean;
                    question: Array<{
                        secureId: string;
                        title: string;
                        modeAdd: boolean;
                        loadingSubmit: boolean;
                        loadingDelete: boolean;
                        answer: {
                            secureId: null;
                            answer: null;
                            symbol: null;
                            value: null;
                        };
                        answerList: Array<{
                            secureId: string;
                            symbol: string;
                            value: number;
                        }>
                    }>
                }>

                Kecermatan.map((e: any, i: any) => {
                    const pointer = i == 0 ? 0 : Result.length;
                    const findIndexSection = Result.findIndex((e2: any) => e2.secureId == e.section_secureId);
                    const lastSectionIndex = Result.length - 1;

                    let lastQuestionIndex: number;
                    if (findIndexSection != -1) lastQuestionIndex = Result[findIndexSection]?.question.length - 1;
                    else lastQuestionIndex = Result[lastSectionIndex]?.question.length - 1;

                    if (i == 0 || findIndexSection == -1) {
                        Result[pointer] = {
                            secureId: e.section_secureId,
                            title: e.title,
                            tableName: e.table_name,
                            firstRow: e?.first_row?.split(", "),
                            secondRow: e?.second_row?.split(", "),
                            modeAdd: false,
                            loadingSubmit: false,
                            loadingDelete: false,
                            question: [
                                {
                                    secureId: e.question_secureId,
                                    title: e?.question?.split(", "),
                                    modeAdd: false,
                                    loadingSubmit: false,
                                    loadingDelete: false,
                                    answer: {
                                        secureId: null,
                                        answer: null,
                                        symbol: null,
                                        value: null,
                                    },
                                    answerList: [
                                        {
                                            secureId: e.answer_secureId,
                                            symbol: e.symbol,
                                            value: e.value
                                        }
                                    ]
                                }
                            ]
                        }
                    }
                    else if (findIndexSection != -1) {
                        if (e.question_secureId != Result[findIndexSection].question[lastQuestionIndex]?.secureId) {
                            Result[findIndexSection].question.push({
                                secureId: e.question_secureId,
                                title: e?.question?.split(", "),
                                modeAdd: false,
                                loadingSubmit: false,
                                loadingDelete: false,
                                answer: {
                                    secureId: null,
                                    answer: null,
                                    symbol: null,
                                    value: null,
                                },
                                answerList: [
                                    {
                                        secureId: e.answer_secureId,
                                        symbol: e.symbol,
                                        value: e.value
                                    }
                                ]
                            })
                        }
                        else if (e.question_secureId == Result[findIndexSection].question[lastQuestionIndex]?.secureId) {
                            Result[findIndexSection].question[lastQuestionIndex].answerList.push({
                                secureId: e.answer_secureId,
                                symbol: e.symbol,
                                value: e.value
                            })
                        }
                    }
                })

                if (KecermatanDetail.is_random && type !== 'admin') Result.map(e => { e.question = [...useFullFunction.randomizedArr(e.question)] })

                const ResultVO = {
                    secureId: KecermatanDetail.secureId,
                    title: KecermatanDetail.title,
                    time: KecermatanDetail.time,
                    description: KecermatanDetail.description,
                    is_active: KecermatanDetail.is_active,
                    is_random: KecermatanDetail.is_random,
                    result: [...Result]
                }

                return ResultVO;
            } else {
                const ResultVO = {
                    secureId: KecermatanDetail.secureId,
                    title: KecermatanDetail.title,
                    time: KecermatanDetail.time,
                    description: KecermatanDetail.description,
                    is_active: KecermatanDetail.is_active,
                    is_random: KecermatanDetail.is_random,
                    result: [...Kecermatan]
                }

                return ResultVO;
            }
        } catch (error) {
            throw error
        }
    }

    public async insertSection(payload: PayloadCreateKecermatanSectionVO): Promise<any> {
        try {
            const [Group] = await this.kecermatanModel.findOneGroup(payload.groupSecureId);
            if (!Group) throw "Kecermatan Group Not Found";

            const Payload: any = {
                id_group: Group.id,
                title: payload.title,
                table_name: payload.table_name,
                first_row: payload.first_row,
                second_row: payload.second_row,
            }

            if (!payload.secureId) {
                Payload.secureId = uuidv4();
                const Create = await this.kecermatanModel.createSection(Payload)
                if (!Create) throw "Create Section Error";

            } else {
                Payload.secureId = payload.secureId
                const Update = await this.kecermatanModel.updateSection(Payload)
                if (!Update) throw "Update Section Error";

            }

            const Result: any = {
                secureId: Payload.secureId,
                title: payload.title,
                table_name: payload.table_name,
                first_row: payload.first_row.split(", "),
                second_row: payload.second_row.split(", "),
                modeAdd: false,
                loadingSubmit: false,
                loadingDelete: false,
            }

            return Result
        } catch (error) {
            throw error;
        }
    }

    public async insertQuestion(payload: PayloadRequestKecermatanQuestionVO): Promise<any> {
        try {
            const [Section] = await this.kecermatanModel.findOneSection(payload.sectionSecureId);
            if (!Section) throw "Kecermatan Section Not Found";

            let Question: any;
            let FindQuestion: any;
            let payload_insert = {} as PayloadCreateKecermatanQuestionVO;
            let isUpdate: boolean;

            if (!payload.secureId) {
                isUpdate = false;
                payload_insert = {
                    id_section: Section.id,
                    secureId: uuidv4(),
                    question: payload.question,
                }
                Question = await this.kecermatanModel.createQuestion(payload_insert);
                if (!Question) throw "Create Question Error";
            } else {
                isUpdate = true;
                [FindQuestion] = await this.kecermatanModel.findOneQuestion(payload.secureId);
                if (!FindQuestion) throw "Question Not Found";

                payload_insert = {
                    id_section: Section.id,
                    secureId: payload.secureId,
                    question: payload.question,
                };

                Question = await this.kecermatanModel.updateQuestion(payload_insert);
                if (!Question) throw "Update Question Error";
            }

            // There is no update scenario, i use delete than create scenario to make sure data is clean
            // Delete Answer When they already created, i check it using secureId
            // Then re-create it 
            if (payload.answerList.every(e => e.secureId)) {
                const FindAnswer = await this.kecermatanModel.findAllAnswer(payload_insert.secureId);
                if (FindAnswer.length != 0) {
                    const Delete = await this.kecermatanModel.deleteAnswer(FindAnswer);
                    if (!Delete) throw "Delete Answer Error";
                }
            }

            const PayloadAnswer: Array<PayloadCreateKecermatanAnswerVO> = [];
            payload.answerList.map(e => {
                PayloadAnswer.push({
                    id_question: isUpdate ? FindQuestion.id : Question.insertId,
                    secureId: uuidv4(),
                    value: e.value,
                    symbol: e.symbol,
                })
            });

            const Answer = await this.kecermatanModel.createAnswer(PayloadAnswer)
            if (!Answer) throw "Create Answer Error";

            const ResultVO: any = {
                sectionSecureId: payload.sectionSecureId,
                secureId: payload_insert.secureId,
                title: payload.question.split(", "),
                modeAdd: false,
                loadingDelete: false,
                loadingSubmit: false,
                answerList: [...PayloadAnswer.map(e => {
                    return {
                        secureId: e.secureId,
                        value: e.value,
                        symbol: e.symbol
                    }
                })]
            }

            return ResultVO;
        } catch (error) {
            throw error;
        }
    }

    public async deleteSection(secureId: string): Promise<any> {
        try {
            const Question = await this.kecermatanModel.deleteSection(secureId);
            if (!Question) throw "Delete Data Error";

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async deleteQuestion(secureId: string): Promise<any> {
        try {
            const Question = await this.kecermatanModel.deleteQuestion(secureId);
            if (!Question) throw "Delete Data Error";

            return true;
        } catch (error) {
            throw error;
        }
    }
};

export default Kecermatan;