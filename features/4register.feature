@register
Feature: 注册
  Scenario Outline: 注册+充值+开户+绑卡
    Given 删除数据库中已存在的用户名<username>
    Given 用户打开APP,验证title
    Given 进入我的账户页
    Given 从登录页进入注册页
    Given 验证注册页面title
    Given 输入用户名<username>密码<password>验证码注册
    Given 取消手势密码设置
    * 进入充值页面
    * 验证充值页title
    * 充值<money>元
    * 验证开通资金托管账户页面title
    * 开通资金托管账户,姓名<name>,身份证<idcard>
    * 验证添加银行卡页面
    * 充值添加银行卡<bankcard>,预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    Examples:
      |username   |password|name    |idcard                 |bankcard                    |money|
      |13522228410| 123456 |   王敏 |   430421198612050018   |   6222020200040016236      |100 |


