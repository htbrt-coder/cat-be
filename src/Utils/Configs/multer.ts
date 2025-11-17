import { Request } from "express";
import multer from "multer"
import path from "path";
import fs from "fs";

const storage = multer.diskStorage({
  destination(req: Request, file: any, cb) {
    const pathUri = path.join(
      'static-img',
      'images',
      req.query.secureId as string,
      req.query.question as string
    )
    fs.mkdirSync(pathUri, { recursive: true })
    cb(null, pathUri)
  },
  filename(req: Request, file: any, cb) {
    cb(null, req.query.fileName as string)
  }
})
const Upload = multer({ storage: storage });
export default Upload