import { Request, Response } from "express";
import * as stateService from "../services/stateService";

export const getState = async (req: Request, res: Response) => {
  try {
    const stateId = req.params.id;
    const state = await stateService.getState(parseInt(stateId));
    if (!state) {
      res.status(404).json({ error: "State not found" });
    } else {
      res.status(200).json(state);
    }
  } catch (error) {
    res.status(500).json({ error: error });
  }
};

export const getAllStates = async (req: Request, res: Response) => {
  try {
    const states = await stateService.getAllStates();
    res.status(200).json(states);
  } catch (error) {
    res.status(500).json({ error: error });
  }
};

export const createState = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};

export const updateState = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};

export const deleteState = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};
