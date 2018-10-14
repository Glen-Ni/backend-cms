const db = require('../models/db')

/**
 * 获取评论
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.list = async (req, res, next) => {
  try {
    let { _page = 1, _limit = 20 } = req.query // get用query post用body！！！！
    _page = _page < 1 ? 1 : _page
    _limit = _limit < 1 ? 1 : _limit
    _limit = _limit > 20 ? 20 : _limit
    // 第一页 0, 20(起始, 长度)
    // 第二页 20, 20
    // 第三页 40, 20
    const sqlStr = `SELECT * FROM comments LIMIT ${(_page - 1) * _limit},${_limit}`
    const comments = await db.query(sqlStr)
    console.log(comments)
    res.status(200).json(comments)
  } catch (err) {
    next(err)
  }
}

/**
 * 创建评论
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.create = async (req, res, next) => {
  try {
    const {
      content = '',
      article_id, // 这里不能改成驼峰，因为结构赋值收到的变量名必须和body里面的一致
      replyId = 0
    } = req.body
    const sqlStr =
      `INSERT INTO comments(content, article_id, user_id, reply_id)
    VALUES(
      '${content}', ${article_id}, ${req.session.user.id}, ${replyId})`
    const ret = await db.query(sqlStr)
    // 此处ret是okPacket对象
    const [comment] = await db.query(`SELECT * FROM comments WHERE id=${ret.insertId}`)
    // 由于返回的是数组, 所以结构赋值
    res.status(201).json(comment)
  } catch (err) {
    next(err)
  }
}

/**
 * 修改评论
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.update = async (req, res, next) => {
  try {
    const body = req.body
    const { id } = req.params
    const sqlStr =
      `UPDATE comments SET content='${body.content}'
     WHERE id=${id}`
    await db.query(sqlStr)
    const updatedComments = await db.query(`SELECT * FROM comments WHERE id=${id}`)
    res.status(201).json(updatedComments)
  } catch (err) {
    next(err)
  }
}

/**
 * 删除评论
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.destory = async (req, res, next) => {
  try {
    const { id } = req.params
    await db.query(`DELETE FROM comments WHERE id=${id}`)
    // console.log(ret, 'delete ret')
    res.status(204).json({}) // 发204后面无论有没有内容,都会变成没有内容
  } catch (err) {
    next(err)
  }
}
