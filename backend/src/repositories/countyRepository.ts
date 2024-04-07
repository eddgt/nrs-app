import { County } from "../core/interfaces/countyInterfaces";
import pool from "../infrastructure/postgres";

export class CountyRepository implements CountyRepository {
  async getCountyById(id: number): Promise<County | null> {
    const query = "SELECT * FROM counties WHERE id = $1";
    const values = [id];

    try {
      const result = await pool.query(query, values);
      return result.rows[0] || null;
    } catch (error) {
      throw new Error(`Error fetching county by ID: ${error}`);
    }
  }

  async getAllCounties(): Promise<County[]> {
    const query = "SELECT * FROM counties";

    try {
      const result = await pool.query(query);
      return result.rows;
    } catch (error) {
      throw new Error(`Error fetching all counties: ${error}`);
    }
  }
}
