const { Sequelize } = require("sequelize");

require("dotenv").config();

console.log("DB ENV VALUES:");
console.log("DB_HOST:", process.env.MYSQLHOST);
console.log("DB_USER:", process.env.MYSQLUSER);
console.log("DB_PASS:", process.env.MYSQLPASSWORD);
console.log("DB_NAME:", process.env.MYSQLDATABASE);
console.log("DB_PORT:", process.env.MYSQLPORT);

const sequelize = new Sequelize(
  process.env.MYSQLDATABASE,
  process.env.MYSQLUSER,
  process.env.MYSQLPASSWORD,
  {
    host: process.env.MYSQLHOST,
    port: process.env.MYSQLPORT,
    dialect: "mysql",
    dialectOptions: { connectTimeout: 10000 },
    logging: false,
  }
);

module.exports = sequelize;
