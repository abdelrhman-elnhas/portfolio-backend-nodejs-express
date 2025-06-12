const express = require("express");
const router = express.Router();
const Project = require("../models/projects");

// GET all projects
router.get("/", async (req, res) => {
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
