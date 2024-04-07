import { Request, Response } from "express";
import { County } from "../models/countyModel";
import { CountyRepository } from "../repositories/countyRepository";

const countyRepository = new CountyRepository();

export const getAllCounties = async (req: Request, res: Response) => {
  try {
    const counties = await countyRepository.getAllCounties();
    res.json(counties);
  } catch (error) {
    res.status(500).json({ message: "Error al obtener los condados" });
  }
};

export const getCountyById = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const county = await countyRepository.getCountyById(parseInt(id));
    if (!county) {
      return res.status(404).json({ message: "Condado no encontrado" });
    }
    res.json(county);
  } catch (error) {
    res.status(500).json({ message: "Error al obtener el condado" });
  }
};

export const createCounty = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};

export const updateCounty = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};

export const deleteCounty = async (req: Request, res: Response) => {
  console.log("Not implemented yet!");
};
