import express from "express";
import cors from "cors";
import stateRoutes from "./routes/stateRoutes";
import countyRoutes from "./routes/countyRoutes";

const app = express();
app.use(cors());

app.use(express.json());
app.use("/api/states", stateRoutes);
app.use("/api/counties", countyRoutes);

const PORT = process.env.PORT || 3003;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
