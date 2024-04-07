import { County } from "../models/countyModel";
import { CountyRepository } from "../repositories/countyRepository";

export class CountyService {
  constructor(private countyRepository: CountyRepository) {}

  async getCountyById(id: number): Promise<County | null> {
    try {
      return await this.countyRepository.getCountyById(id);
    } catch (error) {
      throw new Error(`Error fetching county by ID: ${error}`);
    }
  }

  async getAllCounties(): Promise<County[]> {
    try {
      return await this.countyRepository.getAllCounties();
    } catch (error) {
      throw new Error(`Error fetching all counties: ${error}`);
    }
  }
}
