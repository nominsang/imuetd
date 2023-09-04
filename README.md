# 博硕论文管理系统

git clone git@github.com:nominsang/imuetd.git
cd imuetd
bundle install
rails db:migrate
# 如果您使用 Devise，添加默认用户
rails db:seed
rails server

访问 http://localhost:3000/admin，登录：

    User: admin@example.com
    Password: password

哇！您已经登录到您的新 Active Admin 管理系统的首页了。
