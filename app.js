const express = require("express");
const app = express();
const sequelize = require("./db");
const projectsRoutes = require("./routes/index"); // Make sure this file exists

app.use(express.json()); // Allow JSON body parsing
app.use("/api", projectsRoutes); // Prefix for project endpoints

// Connect to DB
sequelize
  .authenticate()
  .then(() => console.log("DB connected..."))
  .catch((err) => console.error("DB connection error:", err));

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
