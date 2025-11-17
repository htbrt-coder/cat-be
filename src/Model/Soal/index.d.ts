export interface SoalModel {
    findAllKecerdasan(): Promise<any>
    findAllKecermatan(): Promise<any>
    findAllNewKecermatan(): Promise<any>
    findAllKejiwaan(): Promise<any>
    findAllKepribadian(): Promise<any>
}