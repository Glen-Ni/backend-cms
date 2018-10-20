const db = require('../models/db')

exports.list = async (req, res, next) => {
  try {
    let { _page = 1, _limit = 20 } = req.query // get用query post用body！！！！
    _page = _page < 1 ? 1 : _page
    _limit = _limit < 1 ? 1 : _limit
    _limit = _limit > 20 ? 20 : _limit
    // 第一页 0, 20(起始, 长度)
    // 第二页 20, 20
    // 第三页 40, 20
    const sqlStr = `SELECT * FROM topics LIMIT ${(_page - 1) * _limit},${_limit}`
    // 获取总数，返回值是数组，结构赋值套两层
    const [{ count }] = await db.query(`SELECT COUNT(*) as count FROM topics`)
    const topics = await db.query(sqlStr)
    res.status(200).json({ topics, count })
  } catch (err) {
    next(err)
  }
}

exports.getTopicById = async (req, res, next) => {
  try {
    const { id } = req.params
    const [topic] = await db.query(`SELECT * FROM topics WHERE id=${id}`)
    res.status(200).json(topic)
  } catch (err) {
    next(err)
  }
}

exports.create = async (req, res, next) => {
  try {
    const body = req.body
    const { user } = req.session
    body.user_id = user.id
    const sqlStr =
      `INSERT INTO topics(title, content, user_id)
    VALUES(
      '${body.title}', '${body.content}', ${body.user_id})`
    const ret = await db.query(sqlStr)
    // 此处ret是okPacket对象
    const [topic] = await db.query(`SELECT * FROM topics WHERE id=${ret.insertId}`)
    // 由于返回的是数组, 所以结构赋值
    res.status(201).json(topic)
  } catch (err) {
    next(err)
  }
}

exports.update = async (req, res, next) => {
  try {
    const body = req.body
    const { id } = req.params
    console.log(body, id, 'rua')
    const sqlStr =
      `UPDATE topics SET title='${body.title}', content='${body.content}'
     WHERE id=${id}`
    await db.query(sqlStr)
    const updatedTopic = await db.query(`SELECT * FROM topics WHERE id=${id}`)
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
