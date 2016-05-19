@myaccount
Feature:验证用户资产概览页面
  Scenario Outline:验证用户资产概览
    Given 前提:用户登录账户<username>密码<password>
    Given 验证我的资产:
    |5,187,651.66|18,410.60|29.39|1,795,004.87|282.00|

    Examples:
      |username   |password|
      |13500000069|123456  |

