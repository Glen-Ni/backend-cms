const express = require('express')
const router = express.Router()
const db = require('./models/db')
const userController = require('./controllers/user')
const topicController = require('./controllers/topic')
const commentController = require('./controllers/comment')
const sessionController = require('./controllers/session')

function checkLogin(req, res, next) {
  if (!req.session.user) {
    return res.status(401).json({
      error: 'Unauthorized'
    })
  }
  next()
}

async function checkTopic(req, res, next) {
  try {
    const { id } = req.params
    const [topic] = await db.query(`SELECT * FROM topics WHERE id=${id}`)

    // 资源不存在
    if (!topic) {
      return res.status(403).json({
        error: 'Topic not found'
      })
    }

    // 话题作者判断
    if (topic.user_id !== req.session.user.id) {
      return res.status(401).json({
        error: 'Unauthorized'
      })
    }
    next()
  } catch (err) {
    next(err)
  }
}

/**
 * 用户管理
 */
router
  .get('/users', userController.list)
  .get('/users/:id', userController.list)
  .post('/users', userController.create)
  .patch('/users/:id', userController.update)
  .delete('/users/:id', userController.destory)

/**
 * 话题管理
 */
router
  .get('/topics', topicController.list)
  .get('/topics/:id', topicController.getTopicById)
  .post('/topics', checkLogin, topicController.create)
  .patch('/topics/:id', checkLogin, checkTopic, topicController.update)
  .delete('/topics/:id', checkLogin, checkTopic, topicController.destory)

/**
 * 评论管理
 */
router
  .get('/comments', commentController.list)
  .post('/comments', checkLogin, commentController.create)
  .patch('/comments/:id', checkLogin, commentController.update)
  .delete('/comments/:id', checkLogin, commentController.destory)

router
  .get('/session', sessionController.get)
  .post('/session', sessionController.create)
  .delete('/session', sessionController.destory)

module.exports = router
