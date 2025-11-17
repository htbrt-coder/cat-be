import express, { Router, Request, Response } from "express";
import KecerdasanController from "../Controller/Group/Kecerdasan";
import KepribadianController from "../Controller/Group/Kepribadian";
import KejiwaanController from "../Controller/Group/Kejiwaan";
import KecermatanController from "../Controller/Group/Kecermatan";
import NewKecermatanController from "../Controller/Group/New_Kecermatan";

const Routers: Router = express.Router();
const Kecerdasan = new KecerdasanController();
const Kepribadian = new KepribadianController();
const Kejiwaan = new KejiwaanController();
const Kecermatan = new KecermatanController();
const NewKecermatan = new NewKecermatanController();

Routers.get("/kecerdasan", Kecerdasan.findAll.bind(Kecerdasan));
Routers.post("/kecerdasan", Kecerdasan.insertData.bind(Kecerdasan));
Routers.post("/kecerdasan/activation", Kecerdasan.activation.bind(Kecerdasan));
Routers.delete("/kecerdasan/:secureId", Kecerdasan.deleteData.bind(Kecerdasan));

Routers.get("/kepribadian", Kepribadian.findAll.bind(Kepribadian));
Routers.post("/kepribadian", Kepribadian.insertData.bind(Kepribadian));
Routers.post("/kepribadian/activation", Kepribadian.activation.bind(Kepribadian));
Routers.delete("/kepribadian/:secureId", Kepribadian.deleteData.bind(Kepribadian));

Routers.get("/kejiwaan", Kejiwaan.findAll.bind(Kejiwaan));
Routers.post("/kejiwaan", Kejiwaan.insertData.bind(Kejiwaan));
Routers.post("/kejiwaan/activation", Kejiwaan.activation.bind(Kejiwaan));
Routers.delete("/kejiwaan/:secureId", Kejiwaan.deleteData.bind(Kejiwaan));

Routers.get("/kecermatan", Kecermatan.findAll.bind(Kecermatan));
Routers.post("/kecermatan", Kecermatan.insertData.bind(Kecermatan));
Routers.post("/kecermatan/activation", Kecermatan.activation.bind(Kecermatan));
Routers.delete("/kecermatan/:secureId", Kecermatan.deleteData.bind(Kecermatan));

Routers.get("/new-kecermatan", NewKecermatan.findAll.bind(NewKecermatan));
Routers.post("/new-kecermatan", NewKecermatan.insertData.bind(NewKecermatan));
Routers.post("/new-kecermatan/activation", NewKecermatan.activation.bind(NewKecermatan));
Routers.delete("/new-kecermatan/:secureId", NewKecermatan.deleteData.bind(NewKecermatan));

export default Routers;