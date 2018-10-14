const md5 = require('blueimp-md5')
const db = require('../models/db')

exports.list = (req, res, next) => {

}

exports.create = async (req, res, next) => {
  const body = req.body
  const sqlStr =
    `INSERT INTO users(username, password, email, nickname, avatar, gender)
    VALUES(
      '${body.email}', 
      '${md5(md5(body.password))}',
      '${body.email}',
      '${body.nickname}',
      'default-avatar.png',
      0)`

  try {
    const ret = await db.query(sqlStr)
    // 这里需要得到插入完的数据对象
    const [user] = await db.query(`SELECT * FROM users WHERE id=${ret.insertId}`)
    res.status(201).json(user)
  } catch (err) {
    next(err)
  }
}

exports.update = (req, res, next) => {

}

exports.destory = (req, res, next) => {
  try {
    const { id } = req.params
    const sqlStr = `DELETE FROM topics WHERE id=${id}`
    const ret = db.query(sqlStr)
  } catch (err) {
    next(err)
  }
}
