@invest
Feature:投资
  Scenario Outline:已绑卡+金额充足 +投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第4个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13500000069   |123456      |1000      |



  Scenario Outline:已绑卡+金额不足+未验证手机号+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第4个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 验证银行卡,输入预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13522228410   |123456      |1000      |


  Scenario Outline:已绑卡+金额不足 +投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第4个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |
      |13522228410   |123456      |1000      |


  Scenario Outline:未绑卡+投资页面投资
    * 前提:用户登录账户<username>密码<password>
    * 用户进入首页
    * 点击第4个项目卡片
    * 点击项目详情页的立即投资按钮
    * 普通投资<money>元
    * 投资添加银行卡<bankcard>,预留手机号<username>
    * 确认5元提示窗
    * 输入支付密码提交
    * 验证投资的结果
    Examples:
      |username      |password    |money     |bankcard               |
      |13522228410   |123456      |1000      |  6222020200040016236  |
