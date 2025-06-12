const { DataTypes } = require("sequelize");
const sequelize = require("../db");

const Project = sequelize.define(
  "projects",
  {
    title: DataTypes.STRING,
    category: DataTypes.ENUM("Web", "UI-UX", "Graphic Design"),
    image: DataTypes.STRING,
    url: DataTypes.STRING,
    date: DataTypes.STRING,
    orderProj: DataTypes.INTEGER,
  },
  {
    tableName: "projects",
    timestamps: false,
  }
);

module.exports = Project;
