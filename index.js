const { createNodeMiddleware, createProbot } = require("probot");
const app = require("./taskreader");

exports.probotApp = createNodeMiddleware(app, { probot: createProbot() });