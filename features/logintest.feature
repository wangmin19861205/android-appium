@logintest
Feature: 登录进入设置页面
  Scenario Outline: 从设置页面快速登录
    Given 用户打开APP,验证title
    Given 进入设置页
    Given 在设置页面点击button
    Given 在快速登录button后输入用户名<usernametest>密码<passwordtest>登录,成功后进入
    Examples:
      | usernametest | passwordtest |
      | 13200000120  |   123456     |
