const mysql = require('mysql')
const pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'root',
  password: '3597335',
  database: 'cms'
});

exports.query = function (sqlStr) {
  return new Promise((resolve, reject) => {
    pool.getConnection(function (err, connection) {
      if (err) {
        return reject(err)
      }
      connection.query(sqlStr, function (err, ...args) {
        // When done with the connection, release it.
        connection.release()
        if (err) {
          return reject(err)
        }
        resolve(args[0]) // 这个原理有待研究

        // Don't use the connection here, it has been returned to the pool.
      });
    });
  })
}
