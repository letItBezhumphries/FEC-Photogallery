require("dotenv").config();
const mongoose = require("mongoose");
const seedData = require("../seed/generateSeedData");
const seedMongodb = require("../seed/seedMongodb");
const { dropCollection } = require("./dropCollection");

const db = process.env.MONGO_URI

const connectDB = async () => {
  try {
    await mongoose.connect(db, {
      useNewUrlParser: true,
      useCreateIndex: true,
      useFindAndModify: false,
      useUnifiedTopology: true,
    });

    console.log("MongoDB Connected...");

    await dropCollection();

    await seedMongodb(seedData);
  } catch (err) {
    console.error(err.message);
    // Exit process with failure
    process.exit(1);
  }
};

module.exports = connectDB;
