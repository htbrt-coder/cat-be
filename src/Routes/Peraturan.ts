import express, { Router, Request, Response } from "express";
import PeraturanController from "../Controller/Peraturan";
import AuthCheck from "../Utils/Helper/AuthCheck";

const Routers: Router = express.Router();
const Controller = new PeraturanController();

Routers.post("/", AuthCheck.isAdmin, Controller.insertData.bind(Controller));
Routers.get("/", Controller.findAll.bind(Controller));


export default Routers;