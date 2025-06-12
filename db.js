const sequelize = new Sequelize(process.env.DATABASE_URL, {
  dialect: "mysql",
  dialectOptions: {
    ssl: {
      rejectUnauthorized: true,
    },
  },
  logging: false,
});
