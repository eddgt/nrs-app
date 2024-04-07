import { State } from "../models/stateModel";
import * as stateRepository from "../repositories/stateRepository";
import { StateDetail } from "../core/interfaces/stateInterfaces";

export const getState = async (id: number): Promise<StateDetail[] | null> => {
  try {
    return await stateRepository.getStateDetail(id);
  } catch (error) {
    throw new Error(`Error fetching state by ID: ${error}`);
  }
};

export const getAllStates = async (): Promise<State[]> => {
  try {
    return await stateRepository.getAllStates();
  } catch (error) {
    throw new Error(`Error fetching all states: ${error}`);
  }
};

// Agrega funciones similares para updateState y deleteState, llamando a los métodos correspondientes en stateRepository
