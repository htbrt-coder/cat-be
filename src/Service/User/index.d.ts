import { PayloadUserVO, PayloadListUserVO, PayloadUserCreateVO } from "../../Types";

export interface UserService {
    userLogin(PayloadUser: PayloadUserVO): Promise<any>
    userLogout(PayloadUser: string): Promise<any>
    findAll(Payload: PayloadListUserVO): Promise<any>
    registerUser(Payload: PayloadUserCreateVO): Promise<any>
    createUser(Payload: PayloadUserCreateVO): Promise<any>
    deleteUser(Payload: Array<PayloadUserCreateVO>): Promise<any>
}