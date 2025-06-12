const express = require("express");
const router = express.Router();
const Project = require("../models/projects");

router.get("/", (req, res) => res.send("API is running..."));

// GET all projects
router.get("/projects", async (req, res) => {
  try {
    const projects = await Project.findAll({
      order: [["category"], ["orderProj"], ["id", "DESC"]],
    });
    res.json(projects);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// GET projects by category
router.get("/category/:id", async (req, res) => {
  try {
    const projects = await Project.findAll({
      where: { category: req.params.id },
      order: [["orderProj"], ["id", "DESC"]],
    });
    res.json(projects);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// POST create a new project
router.post("/", async (req, res) => {
  try {
    const { title, category, image, url, date, orderProj } = req.body;
    const project = await Project.create({
      title,
      category,
      image,
      url,
      date,
      orderProj,
    });
    res.status(201).json(project);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;
