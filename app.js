const express = require("express");
const app = express();
const sequelize = require("./db");
const projectsRoutes = require("./routes/index"); // Make sure this file exists
require("dotenv").config();

app.use(express.json()); // Allow JSON body parsing
app.use("/api", projectsRoutes); // Prefix for project endpoints

// Connect to DB
sequelize
  .authenticate()
  .then(() => console.log("DB connected..."))
  .catch((err) => console.error("DB connection error:", err));

// Start server
const PORT = process.env.PORT || 3000;

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});
