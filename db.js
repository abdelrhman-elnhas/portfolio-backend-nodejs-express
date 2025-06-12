const { Sequelize } = require("sequelize");

const sequelize = new Sequelize("ae_portfolio_db", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

module.exports = sequelize;
