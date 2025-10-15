const express = require('express');
const path = require('path');
const cors = require('cors');

const port = 3001;
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//Route
const api = require('./src/route/index');

api(app);

app.listen(port, () => {});
