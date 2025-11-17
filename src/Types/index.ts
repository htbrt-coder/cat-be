export interface PayloadUserVO {
    username: string;
    password: string;
}

export interface PayloadUserCreateVO {
    username: string;
    password: string;
    nama_lengkap: string;
    secureId: string;
    type: string;
}

export interface PayloadUserStatusVO {
    secureId: string;
    is_online: boolean
}
export interface PayloadUserStatusUsernameVO {
    username: string;
    is_online: boolean
}

export interface PayloadListUserVO {
    // limit: string;
    // page: string;
    search: string;
    // sortBy: string;
    // sortDesc: string;
}

export interface PayloadCreateKecerdasanVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
    is_random: boolean;
}

export interface PayloadRequestKecerdasanQuestionVO {
    groupSecureId: string;
    question: {
        secureId: string;
        question: string;
        type: string;
    };
    answerList: Array<{
        secureId: string;
        answer: string;
        value: number;
        symbol: string;
        type: string;

    }>
}

export interface PayloadCreateKecerdasanAnswerVO {
    id_question: number;
    secureId: string;
    answer: string;
    value: number;
    symbol: string;
    type: string;
}

export interface PayloadCreateKecerdasanQuestionVO {
    id_group: string | null;
    secureId: string;
    question: string;
    type: string;
}

// Init: string;
export interface PayloadCreateKepribadianVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
    is_random: boolean;
}

export interface PayloadRequestKepribadianQuestionVO {
    groupSecureId: string;
    question: {
        secureId: string;
        question: string;
    };
    answerList: Array<{
        secureId: string;
        answer: string;
        value: number;
        symbol: string;
    }>
}

export interface PayloadCreateKepribadianAnswerVO {
    id_question: number;
    secureId: string;
    answer: string;
    value: number;
    symbol: string;
}

export interface PayloadCreateKepribadianQuestionVO {
    id_group: string | null;
    secureId: string;
    question: string;
}

// Init: boolean;
export interface PayloadCreateKejiwaanVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
    is_random: boolean;
}

export interface PayloadRequestKejiwaanQuestionVO {
    groupSecureId: string;
    question: {
        secureId: string;
        question: string;
    };
    answerList: Array<{
        secureId: string;
        answer: string;
        value: number;
        symbol: string;
    }>
}

export interface PayloadCreateKejiwaanAnswerVO {
    id_question: number;
    secureId: string;
    answer: string;
    value: number;
    symbol: string;
}

export interface PayloadCreateKejiwaanQuestionVO {
    id_group: string | null;
    secureId: string;
    question: string;
}
// End

export interface PayloadCreateKepribadianVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
    type: string;
}

export interface PayloadCreateKejiwaanVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
}

export interface PayloadCreateKecermatanVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    is_active: boolean;
    is_random: boolean
}

export interface PayloadCreateNewKecermatanVO {
    secureId: string;
    title: string;
    description: string;
    time: number;
    time_interval: number;
    is_active: boolean;
    is_random: boolean
}

export interface PayloadCreateKecermatanSectionVO {
    groupSecureId: string;
    secureId: string;
    title: string;
    table_name: string;
    first_row: string;
    second_row: string;
    id_group: string;
}

export interface PayloadRequestKecermatanQuestionVO {
    sectionSecureId: string;
    secureId: string;
    question: string;
    answerList: Array<{
        secureId: string;
        value: number;
        symbol: string;
    }>
}
export interface PayloadCreateKecermatanQuestionVO {
    id_section: string | null;
    secureId: string;
    question: string;
}

export interface PayloadCreateKecermatanAnswerVO {
    id_question: number;
    secureId: string;
    value: number;
    symbol: string;
}

export interface PayloadActivationVO {
    secureId: string;
    is_active: boolean;
}

export interface PayloadPeraturanCreateVO {
    secureId: string;
    type: string;
    description: string;
    rule_type: string;
}

export interface PayloadCreateNilaiVO {
    secureId: string;
    userSecureId: string;
    type_nilai: string;
    paket_soal: string;
    nilai: number;
    id_user: string;
}

export interface PayloadCreateNilaiKecermatanVO {
    secureId: string;
    id_user: string;
    userSecureId: string;
    paket_soal: string;
    section: string;
    benar: number;
    salah: number;
    tidak_dijawab: number;
    total: number;
}