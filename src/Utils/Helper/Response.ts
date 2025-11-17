import { Response, NextFunction } from "express";

const Responses = {
    success: (res: Response, result: any, message: string = "OK") => {
        res.status(200).send({
            message,
            result
        });
    },
    badRequest: (res: Response, result: any, next: NextFunction): void => {
        res.status(200).send({
            message: "BAD_REQUEST",
            result
        });
        next(result);
    },
    failed: (res: Response, result: any, next: NextFunction): void => {
        res.status(500).send({
            message: "ERROR",
            result
        });
        next(result);
    },
    tokenError: (res: Response, result: any, next: NextFunction): void => {
        res.status(401).send({
            message: "ERROR",
            result
        })
    }
};

export default Responses;
