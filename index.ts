import 'dotenv/config';
import express from 'express';
const app = express();


app.get("/",(req,res,next)=>{
    res.json({env:process.env.NODE_ENV, version:1})
})

app.listen(7744)