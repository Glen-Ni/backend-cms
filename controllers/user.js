const md5 = require('blueimp-md5')
const db = require('../models/db')

exports.list = async (req, res, next) => {
  try {
    const query = req.query
    let sqlStr = 'SELECT * FROM users WHERE 1=1'
    // 不同请求拼接不同内容
    for (let key in query) {
      sqlStr += ` and ${key}='${query[key]}'`
    }
    const ret = await db.query(sqlStr)
    res.status(200).json(ret)
  } catch (err) {
    next(err)
  }
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

exports.update = async (req, res, next) => {
  try {
    const body = req.body
    const { id } = req.params
    const sqlStr =
      `UPDATE users SET
      username=${body.email}',
      password='${md5(md5(body.password))},
      email='${body.email}',
     WHERE id=${id}`
    await db.query(sqlStr)
    const updatedUser = await db.query(`SELECT * FROM users WHERE id=${id}`)
    res.status(201).json(updatedUser)
  } catch (err) {
    next(err)
  }
}

exports.destory = (req, res, next) => {
  try {
    const { id } = req.params
    const sqlStr = `DELETE FROM topics WHERE id=${id}`
    db.query(sqlStr)
    res.status(204).json({})
  } catch (err) {
    next(err)
  }
}
