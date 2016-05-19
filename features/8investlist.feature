@investlist
Feature:用户投资列表页面
  Background:
    * 前提:用户登录账户13500000069密码123456
  Scenario: 验证用户登录后进入投资记录页面
    * 进入投资记录页面

    
  Scenario: 验证用户的未还款投资记录
    * 进入投资记录页面
    * 切换到未还款项目tab
    * 验证投资记录项目数据:
    |71          |77           | 0           |
    |1,000.00    |1,000.00     |200,000.00   |
    |0.00        |0.00         |0.00         |
    |24.75       |28.12        |63.89        |