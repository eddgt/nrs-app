import express from "express";
import { getState, getAllStates } from "../controllers/stateController";

const router = express.Router();

router.get("/:id", getState);
router.get("/", getAllStates);

export default router;
