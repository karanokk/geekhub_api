# geekhub_api
[![platform](https://img.shields.io/badge/platform-flutter|dart%20vm-2fbaf8.svg?style=flat-square)](https://github.com/karanokk/geekhub_api)
[![codecov](https://img.shields.io/codecov/c/github/karanokk/geekhub_api?color=f01f7a&logo=codecov&style=flat-square&token=I0Y071QU0G)](https://codecov.io/gh/karanokk/geekhub_api)

基于网页爬虫的 GeekHub API

### 登陆

- [x] cookie 登陆 
    `signInWithCookies`

- [x] 账号密码登陆
    `signInWithNameAndPassword`
- [ ] 第三方登陆

### 帖子

- [x] 获取主页帖子 & 翻页
    `getFeeds`
- [x] 获取帖子内容 & 评论 & 评论翻页
    `getPost`
    `getComments`
- [x] 发布评论
    `comment`
- [ ] 发布帖子
    `浏览器替代`
- [x] 星标评论
    `toggleCommentStar`
- [x] 星标帖子
    `togglePostStar`

### 账户

- [x] 获取个人资料
    `getUser`
- [x] 签到
    `checkIn`
- [x] 更新账户资料
    `updateAccountSettings`
- [x] 星标用户
    `toggleUserStar`
- [ ] 推送消息

### 错误处理
`GeekHubAPIFaliure`

`.unableToParse(String message)`: 网页结构改变，无法解析

`.unAuthenticated()`: 用户未登陆

`.unexpected()`: 未知错误