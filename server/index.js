const express = require('express');
const mongoose = require('mongoose');
const authRouter=require('./routes/auth');
const app = express();
const PORT = 3000;
const DB="mongodb+srv://jheric1:test1234@cluster0.8mpzu9a.mongodb.net/?retryWrites=true&w=majority";
app.use(express.json());
app.use(authRouter);
mongoose.connect(DB).then(()=>{
    console.log("Connection successfull");
}).catch((e)=>{
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at ${PORT}`);
})
