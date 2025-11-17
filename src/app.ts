import express, { Application } from "express";
import Router from "./Routes";
import cors from "cors";
import logger from "morgan";
import helmet from "helmet";
import path from "path";
import dotenv from "dotenv";
import fs from "fs";

dotenv.config({ path: path.resolve(__dirname, "../../.env") });

const app: Application = express();

const SHARED_ROOT = path.join(__dirname, '..', '..');
const DIST_PATH = path.join(SHARED_ROOT, 'cat-fe', 'dist'); // Path ke DIST FRONTEND
const UPLOAD_PATH = path.join(__dirname, 'static-img', 'images');

console.log('Path Root Proyek:', SHARED_ROOT);
console.log('Path DIST Frontend:', DIST_PATH); // Harus mencantumkan 'frontend/dist'
console.log('Path UPLOAD Backend:', UPLOAD_PATH);

// Init Morgan
var accessLogStream = fs.createWriteStream(path.join(__dirname, "access.log"), {
    flags: "a",
});

app.use(logger("combined", { stream: accessLogStream }));
app.use(logger("combined"))

// Manage cors, menentukan situs mana yang boleh akses, situs yang mana yang di blacklist
app.use(cors());

// app.use("/photos-service", express.static(path.join(__dirname, "static-img")));

// Init Body Parser
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Init Cross Server Scripting
app.use(helmet.xssFilter());


app.use('/images', express.static(UPLOAD_PATH));
app.use(express.static(DIST_PATH));
app.use("/", express.static(path.join("static-img")));

app.get('*', (req, res) => {
    res.sendFile(path.join(DIST_PATH, 'index.html'));
});


// Init Router
app.use("/", Router);

app.listen(process.env.SERVER_PORT || 80, () =>
    console.log(`Server Running di Port ${process.env.SERVER_PORT || 80}`)
);
