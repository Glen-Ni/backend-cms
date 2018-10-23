const db = require('../models/db')
const md5 = require('blueimp-md5')

/**
 * 获取登录状态
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.get = (req, res, next) => {
  const { user } = req.session
  if (!user) {
    return res.status(401).json({
      error: 'Unauthorized'
    })
  }
  // console.log(user)
  // console.log(user.nickname, ' logged in')
  res.status(200).json(user)
}

/**
 * 创建登录
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.create = async (req, res, next) => {
  const body = req.body
  body.password = md5(md5(body.password))
  const sqlStr = `SELECT * FROM users WHERE email='${body.email}' and password='${body.password}'`
  try {
    const ret = await db.query(sqlStr)
    // console.log(ret, '登录ret')
    const user = ret[0]
    if (!user) {
      return res.status(404).json({
        error: 'Invalid email or password'
      })
    }
    // console.log(user.nickname, ' logged in')
    req.session.user = user
    res.status(201).json(user)
  } catch (err) {
    next(err)
  }
}

/**
 * 注销登录
 *
 * @param      {<type>}    req     The request
 * @param      {<type>}    res     The resource
 * @param      {Function}  next    The next
 * @return     {<type>}    { description_of_the_return_value }
 */
exports.destory = (req, res, next) => {
  delete req.session.user
  // console.log('user log out')
  res.status(204).json({}) // 根据RESTful规范，delete操作返回空文档
}
