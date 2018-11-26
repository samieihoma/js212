var express = require('express');
var router = express.Router();
con = require('./Connection');
/* GET users listing. */


router.get('/:userID', function (req, res, next) {
  con.query("select * from Users where UserID="+req.params.userID, function (err, result, field) {
    if (err) console.log(err);
    else
      res.send(result);
    console.log(result);
  })
});
//////////////////////////

router.get('/', function (req, res, next) {
  con.query("select * from Users", function (err, result, field) {
    if (err) console.log(err);
    else
      res.send(result);
    console.log(result);
  })
});
/////////////////
router.get('/:username', function (req, res, next) {
  con.query("select UserID from Users where username="+req.params.username, function (err, result, field) {
    if (err) console.log(err);
    else
      res.send(result);
    console.log(result);
  })
});


module.exports = router;
