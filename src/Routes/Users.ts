import express, { Router, Request, Response } from "express";
import UserController from "../Controller/User";
import AuthCheck from "../Utils/Helper/AuthCheck";

const Routers: Router = express.Router();
const Controller = new UserController();

Routers.post("/login", Controller.userLogin.bind(Controller));
Routers.post("/logout", Controller.userLogout.bind(Controller));
Routers.post("/register", Controller.registerUser.bind(Controller));
Routers.post("/insert", AuthCheck.token, AuthCheck.isAdmin, Controller.insertUser.bind(Controller));
Routers.delete("/delete", AuthCheck.token, AuthCheck.isAdmin, Controller.deleteUser.bind(Controller));
Routers.get("/list", AuthCheck.token, Controller.findAllUser.bind(Controller));

export default Routers;