#  前后端分离的多人博客系统简单模拟 后端

#### &bull;node环境express框架；

#### &bull;mySQL存储数据；

#### &bull;RESTful风格API；

#### &bull;session插件存储登录状态;

#### &bull;ES6语法风格；

水平有限，尽请指教

## Build Setup

``` bash
# 安装依赖
npm install

# 端口3000
npm run dev
```
## 路由api列表

``` Javascript
// 用户管理
router
  .get('/users', userController.list)
  .get('/users/:id', userController.list)
  .post('/users', userController.create)
  .patch('/users/:id', userController.update)
  .delete('/users/:id', userController.destory)

// 话题管理
router
  .get('/topics', topicController.list)
  .get('/topics/:id', topicController.getTopicById)
  .post('/topics', checkLogin, topicController.create)
  .patch('/topics/:id', checkLogin, checkTopic, topicController.update)
  .delete('/topics/:id', checkLogin, checkTopic, topicController.destory)

// 评论管理
router
  .get('/comments', commentController.list)
  .post('/comments', checkLogin, commentController.create)
  .patch('/comments/:id', checkLogin, commentController.update)
  .delete('/comments/:id', checkLogin, commentController.destory)

// 登录状态管理
router
  .get('/session', sessionController.get)
  .post('/session', sessionController.create)
  .delete('/session', sessionController.destory)
```
