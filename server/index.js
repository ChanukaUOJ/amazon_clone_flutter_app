//import from packages
const express = require('express');
const mongoose = require('mongoose');

//import from other files
const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');

//init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://chamithroxmpc:f6yqj3Hy0gZRXQp4@cluster0.dig0kdh.mongodb.net/?retryWrites=true&w=majority";

//middleware
// CLIEND -> middlware -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//connections
mongoose.connect(DB, { useNewUrlParser: true, useUnifiedTopology: true }).then(()=>{
    console.log("Connection Successful");
}).catch((e)=>{
    console.log(e);
});


//local host -> https://10.0.0.2:PORT
app.listen(PORT,()=>{
    console.log(`Connected at ${PORT}`)
});