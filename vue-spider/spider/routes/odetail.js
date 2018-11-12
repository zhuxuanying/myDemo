//用户路由器
const express=require('express');
//导入连接数据库的模块
const pool=require('../pool.js');
//使用路由器 返回对象------------------------1***
var router=express.Router();
//index
// 请求  hot—move
router.get("/",(req,res)=>{
    var hid=req.query.hid;
    var sql="SELECT myrow,mycol,hall_name FROM spider_hall where hid=?";
    pool.query(sql,[hid],(err,result)=>{
        if(err) throw err;
       res.send(result);   
    })
})
router.get("/updateDate",(req,res)=>{
    //console.log(req.body)
    var row=req.query.row;
    var col=req.query.col;
    var hid=req.query.hid;
   
   // row=JSON.stringify(row);
    //col=JSON.stringify(col);
    console.log(row)
    console.log(col)
    //var row="1,1,1,1,1"
    //var mycol="0,0,0,0,0"
    var sql="UPDATE spider_hall SET myrow=?,mycol=?  WHERE hid=?";
    pool.query(sql,[row,col,hid],(err,result)=>{
        if(err) throw err;
        res.send(result);   
    })
})
//http://localhost:3000/odetail/updateDate
//导出路由器
module.exports=router;