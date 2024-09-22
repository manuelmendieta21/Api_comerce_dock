const express = require('express');
const morgan= require('morgan');
const app = express();


/*incluimos morgan con la libreria dev existen combined, common, dev, short, tiny*/
app.use(morgan('dev'));

app.use(require('./routes/index'));

module.exports =app;
