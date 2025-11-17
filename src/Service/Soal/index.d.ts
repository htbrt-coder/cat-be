export interface SoalService {
    findAll(type: string): Promise<any>
    findCover(secureId: string, type: string): Promise<any>
}