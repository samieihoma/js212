var express = require('express');
var router = express.Router();
con=require('./Connection');
/* GET users listing. */
router.get('/', function(req, res, next) {
 con.query("select * from Questions",function(err,result,field){
   if (err) console.log(err);
else 
res.send(result);


   console.log(result);
 }) 
  
  
});

module.exports = router;