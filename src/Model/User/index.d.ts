import { PayloadUserCreateVO, PayloadListUserVO } from "../../Types";

export interface UserModel {
    findByUsername(username: string): Promise<any>;
    findBySecureId(secureId: string): Promise<any>;
    findAll(payload: PayloadListUserVO): Promise<any>;
    createUser(PayloadUser: PayloadUserCreateVO): Promise<any>;
    updateUser(PayloadUser: PayloadUserCreateVO): Promise<any>;
    deleteUser(PayloadUser: Array<PayloadUserCreateVO>): Promise<any>;
}

