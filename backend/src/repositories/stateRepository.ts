import { State } from "../models/stateModel";
import pool from "../infrastructure/postgres";
import { StateDetail } from "../core/interfaces/stateInterfaces";

export const getStateDetail = async (
  id: number
): Promise<StateDetail[] | null> => {
  const query = "SELECT * FROM counties WHERE state_id = $1";
  const values = [id];

  try {
    const result = await pool.query(query, values);
    return result.rows || null;
  } catch (error) {
    throw new Error(`Error fetching state by ID: ${error}`);
  }
};

export const getAllStates = async (): Promise<State[]> => {
  const query = "SELECT * FROM states";

  try {
    const result = await pool.query(query);
    return result.rows;
  } catch (error) {
    throw new Error(`Error fetching all states: ${error}`);
  }
};
