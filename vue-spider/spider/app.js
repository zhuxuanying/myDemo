//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
const session=require("express-session");
/*引入路由模块*/
const index=require("./routes/index.js");
const mdetail=require("./routes/mdetail");
const mlist=require("./routes/mlist.js");
const users=require("./routes/users");
const odetail=require("./routes/odetail");
var app = express();
app.use(cors({
    origin:"http://localhost:8080",
    credentials:true
  }))
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(session({
  secret:'随机字符串',
  resave:false,
  saveUninitialized:true
}))

/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/mdetail",mdetail);
app.use("/mlist",mlist);
app.use("/users",users);
app.use("/odetail",odetail)

