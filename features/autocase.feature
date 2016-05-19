@autocase
Feature: 核心业务case
  Scenario Outline: 注册+开通资金托管账户
    Given 删除数据库中已存在的用户名<username>
    Given 用户打开APP,验证title
    Given 进入我的账户页
    Given 从登录页进入注册页
    Given 验证注册页面title
    Given 输入用户名<username>密码<password>验证码注册
    Given 取消手势密码设置
    * 进入设置页
    * 进入开通资金托管账户页面
    * 验证开通资金托管账户页面title
    * 开通资金托管账户,姓名<name>,身份证<idcard>
    Examples:
    |username   |password|name    |idcard                  |
    |13522228410| 123456 |   王敏 |   430421198612050018   |


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
    * 验证添加宝易互通银行卡过度页面title
    * 添加宝易互通银行卡,输入银行卡<bankcard>
    * 验证添加银行卡页面
    * 充值添加银行卡,预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    Examples:
      |username   |password|name    |idcard                 |bankcard                    |money|
      |13522228410| 123456 |   王敏 |   430421198612050018   |   6222020200040016236      |100 |


  Scenario Outline:登录后充值
    * 前提:用户登录账户<username>密码<password>
    * 进入充值页面
    * 充值<money>元
    * 输入支付密码提交
    Examples:
      |username     |password|money  |
      |13522228410  |123456  |100    |


  Scenario Outline:已绑卡+金额充足+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第1个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13500000069   |123456      |1000      |


  Scenario Outline:已绑卡+金额不足+未验证手机号+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 删除数据库中用户<username>的验卡信息
    * 用户进入首页
    * 点击第1个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 验证银行卡,输入预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13522228410   |123456      |1000      |


  Scenario Outline:已绑卡+金额不足+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第1个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13522228410   |123456      |1000      |


  Scenario Outline:用户已开户绑卡,充值后，再提现
    * 前提:用户登录账户<username>密码<password>
    * 进入充值页面
    * 充值<money>元
    * 输入支付密码提交
    * 进入提现页面
    * 验证提现页title
    * 提现<money>元
    * 验证提现确认页title
    * 输入密码,提现确认
    * 验证交易明细-提现状态页的title
    Examples:
      |username   |password|money|
      |13500000069|123456  |1000 |


  Scenario Outline:未绑卡+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 删除数据库中用户<username>的银行卡信息
    * 用户进入首页
    * 点击第1个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 验证添加宝易互通银行卡过度页面title
    * 添加宝易互通银行卡,输入银行卡<bankcard>
    * 投资添加银行卡,预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |bankcard               |
      |13522228410   |123456      |1000      |  6222020200040016236  |








    