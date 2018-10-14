const express = require('express')
const router = require('./router')
const bodyParser = require('body-parser')
const session = require('express-session')

const app = express()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(session({
  secret: 'rua',
  resave: false,
  saveUninitialized: false
}))

app.use(router)

app.get('/', (req, res, next) => {
  res.status(200).send('api server is running')
})

app.use((err, req, res, next) => {
  res.status(500).json({
    error: err.message
  })
})

app.listen(3000, () => {
  console.log('app is running at port 3000')
})
