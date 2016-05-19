@withdraw
Feature:验证提现页面
  Scenario Outline:验证用户登录后进入提现页面
    * 前提:用户登录账户<username>密码<password>
    * 进入提现页面
    Examples:
      |username   |password|
      |13269395192|123456  |


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
      |13269395192|123456  |1000 |

  Scenario Outline:用户已绑卡,账户余额充足,直接提现
      * 前提:用户登录账户<username>密码<password>
      * 进入提现页面
      * 验证提现页title
      * 提现<money>元
      * 验证提现确认页title
      * 输入密码,提现确认
      * 验证交易明细-提现状态页的title
      Examples:
        |username   |password|money|
        |13269395192|123456  |1000 |