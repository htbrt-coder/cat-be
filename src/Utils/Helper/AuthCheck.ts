import JWT from "jsonwebtoken";
import path from "path";
import dotenv from "dotenv";
import Responses from "../../Utils/Helper/Response";
import { Request, Response, NextFunction } from "express";

dotenv.config({ path: path.resolve(__dirname, "../../.env") });

const AuthCheck = {
    token: (req: Request, res: Response, next: NextFunction): void => {
        try {
            const { authorization } = req.headers
            const token = authorization?.split(" ")[1];

            JWT.verify(token as string, process.env.SECRET_KEY as string, (err, decoded) => {
                if (err) {
                    if (err.name == 'TokenExpiredError') throw "Token Expired";
                    else if (err.name == 'JsonWebTokenError') throw "Token Not Found";
                    else throw err.name
                } else {
                    next();
                }
            });
        } catch (error) {
            return Responses.tokenError(res, error, next);
        }
    },
    isAdmin: (req: Request, res: Response, next: NextFunction): void => {
        try {
            const { authorization } = req.headers
            const token = authorization?.split(" ")[1];

            JWT.verify(token as string, process.env.SECRET_KEY as string, (err: any, decoded: any) => {
                if (decoded.type != 'admin') throw "Unauthorized access"
                else next()
            });

        } catch (error) {
            return Responses.tokenError(res, error, next);
        }
    }
}

export default AuthCheck;