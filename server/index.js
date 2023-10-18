//import from packages
const express = require('express');
const mongoose = require('mongoose');
//import from other files
const authRouter = require('./routes/auth');

//init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://chamithroxmpc:f6yqj3Hy0gZRXQp4@cluster0.dig0kdh.mongodb.net/?retryWrites=true&w=majority";

//middleware
// CLIEND -> middlware -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);

//connections
mongoose.connect(DB).then(()=>{
    console.log("Connection Successful");
}).catch((e)=>{
    console.log(e);
});


//local host -> https://10.0.0.2:PORT
app.listen(PORT,()=>{
    console.log(`Connected at ${PORT}`)
});