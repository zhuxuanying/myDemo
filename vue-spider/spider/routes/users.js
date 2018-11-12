//用户路由器
const express=require('express');
//导入连接数据库的模块
const pool=require('../pool.js');
const cors=require("cors");
//使用路由器 返回对象------------------------1***
var router=express.Router();
//user
// 请求  
router.post("/signin",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var sql="SELECT * FROM spider_user where uname=? and upwd=?"
   
     
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            
        })
        //res.write("1")
            if(result.length>0){
                req.session.uid=result[0].uid
                res.write("1")
            }else{
                res.write("0")
            }  
            res.end();
    })
   
   
 
  
}) 

router.get("/islogin",(req,res)=>{
    if(req.session.uid!==undefined){
        var uid=req.session.uid;
        var sql="select * from spider_user where uid=?";
        pool.query(sql,[uid],(err,result)=>{
            if(err) console.log(err);
            res.send({ok:1,uname:result[0].uname})
        })
    }else{
        res.send({ok:0})
    }
})
router.get("/signout",(req,res)=>{
    req.session.uid=undefined;
    res.send()
})
//导出路由器
module.exports=router;