const db = require('../models/db')

exports.list = async (req, res, next) => {
  let { _page = 1, _limit = 20 } = req.query // get用query post用body！！！！
  _page = _page < 1 ? 1 : _page
  _limit = _limit < 1 ? 1 : _limit
  _limit = _limit > 20 ? 20 : _limit
  // 第一页 0, 20(起始, 长度)
  // 第二页 20, 20
  // 第三页 40, 20
  const sqlStr = `SELECT * FROM topics LIMIT ${(_page - 1) * _limit},${_limit}`
  try {
    const topics = await db.query(sqlStr)
    console.log(topics)
    res.status(200).json(topics)
  } catch (err) {
    next(err)
  }
}

exports.create = async (req, res, next) => {
  const body = req.body
  const { user } = req.session
  body.user_id = user.id
  const sqlStr =
    `INSERT INTO topics(title, content, user_id)
    VALUES(
      '${body.title}','${body.content}','${body.user_id}')`
  try {
    const ret = await db.query(sqlStr)
    // 此处ret是okPacket对象
    const [user] = await db.query(`SELECT * FROM topics WHERE id='${ret.insertId}'`)
    // 由于返回的是数组, 所以结构赋值
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
    `UPDATE topics SET title='${body.title}', content='${body.content}'
     WHERE id=${id}`
    await db.query(sqlStr)
    const updatedTopic = await db.query(`SELECT * FROM topics WHERE id='${id}'`)
    res.status(201).json(updatedTopic)
  } catch (err) {
    next(err)
  }
}

exports.destory = async (req, res, next) => {
  try {
    const { id } = req.params
    await db.query(`DELETE FROM topics WHERE id=${id}`)
    // console.log(ret, 'delete ret')
    res.status(204).json({}) // 发204后面无论有没有内容,都会变成没有内容
  } catch (err) {
    next(err)
  }
}