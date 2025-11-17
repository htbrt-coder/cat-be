import UserModel from "../../Model/User";
import { PayloadUserVO, PayloadUserCreateVO, PayloadListUserVO } from "../../Types";
import { UserService } from "./index.d";
import path from "path";
import dotenv from "dotenv";
import JWT from "jsonwebtoken";


dotenv.config({ path: path.resolve(__dirname, "../../.env") });


class User implements UserService {
    userModel: UserModel;

    constructor() {
        this.userModel = new UserModel();
    }

    public async userLogin(PayloadUser: PayloadUserVO): Promise<any> {
        try {
            const [User] = await this.userModel.findByUsername(PayloadUser.username);
            if (!User) throw "User's Not Found";

            if (!(User.password == PayloadUser.password)) throw "Incorrect Password"

            const Status = await this.userModel.updateStatus({
                secureId: User.secureId,
                is_online: true
            })
            if (!Status) throw "Error Update Status"

            const token = JWT.sign({ username: User.username, type: User.type }, process.env.SECRET_KEY as string, { algorithm: 'HS256', expiresIn: '6h' });

            const Response = {
                secureId: User.secureId,
                username: User.username,
                nama_lengkap: User.nama_lengkap,
                type: User.type,
                token
            }
            return Response;
        } catch (error) {
            throw error;
        }
    }

    public async userLogout(Username: string): Promise<any> {
        try {
            const Status = await this.userModel.updateStatusByUsername({
                username: Username,
                is_online: false
            })
            if (!Status) throw "Error Logout"

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async registerUser(PayloadUser: PayloadUserCreateVO): Promise<any> {
        try {
            const [User] = await this.userModel.findByUsername(PayloadUser.username);
            if (User) throw "Username is Already Taken";

            const Result = await this.userModel.createUser(PayloadUser);
            if (!Result) throw "Error Register"

            const token = JWT.sign({ username: PayloadUser.username }, process.env.SECRET_KEY as string, { algorithm: 'HS256', expiresIn: '6h' });

            const Response = {
                secureId: PayloadUser.secureId,
                username: PayloadUser.username,
                nama_lengkap: PayloadUser.nama_lengkap,
                type: PayloadUser.type,
                token
            }
            return Response;
        } catch (error) {
            throw error;
        }
    }

    public async createUser(PayloadUser: PayloadUserCreateVO): Promise<any> {
        try {
            const [User] = await this.userModel.findByUsername(PayloadUser.username);
            if (User) throw "Username is Already Taken";

            const Result = await this.userModel.createUser(PayloadUser);
            if (!Result) throw "Error Create User"

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async updateUser(PayloadUser: PayloadUserCreateVO): Promise<any> {
        try {
            const [User] = await this.userModel.findBySecureId(PayloadUser.secureId);
            if (!User) throw "User is Not Found";

            const Result = await this.userModel.updateUser(PayloadUser);
            if (!Result) throw "Error Update"

            return true;
        } catch (error) {
            throw error;
        }
    }

    public async deleteUser(PayloadUser: Array<PayloadUserCreateVO>): Promise<any> {
        try {
            const User = await this.userModel.deleteUser(PayloadUser);
            return true;
        } catch (error) {
            throw error;
        }
    }

    public async findAll(Payload: PayloadListUserVO): Promise<any> {
        try {
            const User = await this.userModel.findAll(Payload);

            return {
                elements: 10,
                pages: 1,
                data: [...User],
            }
        } catch (error) {
            throw error;
        }
    }
}

export default User;