const dotenv = require("dotenv");
dotenv.config();
const express = require("express");
const fs = require("fs");
const path = require("path");

const app = express();
const posts = JSON.parse(
  fs.readFileSync(path.resolve(__dirname, "./data/posts.json"))
);

app.get("/posts", (req, res) => {
  const { limit } = req.query;
  const limitedPosts = posts.slice(0, limit || 10)
  res.send(limitedPosts);
});

module.exports = app;
