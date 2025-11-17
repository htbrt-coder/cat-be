import express, { Router, Request, Response, NextFunction } from "express";
import AuthCheck from "../Utils/Helper/AuthCheck";

// Routes
import User from "./Users";
import Group from "./Group";
import Questions from "./Questions";
import Peraturan from "./Peraturan"
import Soal from "./Soal"
import Nilai from "./Nilai";

const Routers: Router = express.Router();

Routers.use("/users", User);
Routers.use("/groups", AuthCheck.token, AuthCheck.isAdmin, Group);
Routers.use("/questions", AuthCheck.token, Questions);
Routers.use("/peraturan", AuthCheck.token, Peraturan);
Routers.use("/soal", AuthCheck.token, Soal);
Routers.use("/nilai", AuthCheck.token, Nilai);
Routers.use("/", (req: Request, res: Response, next: NextFunction): any =>
    res.send("Node JS Running")
);

export default Routers;