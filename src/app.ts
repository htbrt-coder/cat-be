import express, { Application } from "express";
import Router from "./Routes"; // Asumsikan ini adalah file router utama API Anda
import cors from "cors";
import logger from "morgan";
import helmet from "helmet";
import path from "path";
import dotenv from "dotenv";
import fs from "fs";

// Memuat variabel lingkungan dari file .env
dotenv.config({ path: path.resolve(__dirname, "../../.env") });

const app: Application = express();

// Definisikan path-path penting
const SHARED_ROOT = path.join(__dirname, '..', '..');
const DIST_PATH = path.join(SHARED_ROOT, 'cat-fe', 'dist'); // Path ke folder DIST (Frontend)
const UPLOAD_PATH = path.join(__dirname, 'static-img', 'images'); // Path ke folder upload gambar

console.log('Path Root Proyek:', SHARED_ROOT);
console.log('Path DIST Frontend:', DIST_PATH);
console.log('Path UPLOAD Backend:', UPLOAD_PATH);

// --- 1. INIT MIDDLEWARE UTAMA ---

// Inisialisasi Morgan Logger
var accessLogStream = fs.createWriteStream(path.join(__dirname, "access.log"), {
    flags: "a",
});
app.use(logger("combined", { stream: accessLogStream }));
app.use(logger("combined")); // Log juga ke console

// CORS: Izinkan situs lain mengakses API
app.use(cors());

// Body Parser: Untuk memproses JSON dan data formulir
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Security: Pencegahan serangan XSS
app.use(helmet.xssFilter());


// --- 2. PENANGANAN ROUTER API (HARUS DI ATAS FALLBACK) ---

// Inisialisasi Router API
// SEMUA permintaan ke /api/* akan ditangani di sini.
app.use("/api", Router); 


// --- 3. PENANGANAN FILE STATIS & FRONTEND SPA (HARUS DI BAWAH API) ---

// Melayani gambar yang di-upload (/images/*)
app.use('/images', express.static(UPLOAD_PATH));

// Melayani file statis lainnya dari root backend (jika ada, seperti favicon, dll)
app.use("/", express.static(path.join("static-img")));

// Melayani file statis dari DIST Frontend (JS, CSS, assets)
app.use(express.static(DIST_PATH));

// Aturan FALLBACK (History Mode): 
// Menangkap SEMUA permintaan GET yang belum ditangani (bukan API dan bukan file statis) 
// dan mengembalikannya ke index.html agar frontend SPA yang menangani routing.
app.get('*', (req, res) => {
    res.sendFile(path.join(DIST_PATH, 'index.html'));
});


// --- 4. START SERVER ---

app.listen(process.env.SERVER_PORT || 80, () =>
    console.log(`Server Running di Port ${process.env.SERVER_PORT || 80}`)
);