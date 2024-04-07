import express from "express";
import { getCountyById, getAllCounties } from "../controllers/countyController";

const router = express.Router();

router.get("/", getAllCounties);
router.get("/:id", getCountyById);

export default router;
