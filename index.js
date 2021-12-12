var restify = require('restify');
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : process.env.MYSQL_HOST,
  user     : process.env.MYSQL_USERNAME,
  password : process.env.MYSQL_PASSWORD,
  database : process.env.MYSQL_DATABASE
});
connection.connect();
console.log("mysql connected")

function query(con,sql){
  return new Promise(function (resolve,reject){
    con.query(sql, function (error,result){
      if (error){
        reject()
      }
      else{
        resolve(result)
      }
    })
  })
}


function respond(req, res, next) {
  MYSQL_TABLE = process.env.MYSQL_TABLE;
  NAME = req.params.name;
  AGE = req.params.age
  sql = `insert into ${MYSQL_TABLE} (fullname, age) VALUES ('${NAME}', '${AGE}');`
  console.log(sql)
  query(connection,sql).then((data)=>{
    res.send(`hello ${NAME}. age: ${AGE}`);
  }).finally(()=>{
    next();
  })
}

var server = restify.createServer();
server.get('/hello/:name/:age', respond);
server.head('/hello/:name/:age', respond);

server.listen(process.env.PORT, function() {
  console.log('%s listening at %s', server.name, server.url);
});

