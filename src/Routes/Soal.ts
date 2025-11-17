import express, { Router, Request, Response } from "express";
import SoalController from "../Controller/Soal";

const Routers: Router = express.Router();
const Controller = new SoalController();

Routers.get("/list", Controller.findAll.bind(Controller));
Routers.get("/cover", Controller.findCover.bind(Controller));


export default Routers;