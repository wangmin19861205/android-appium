Given /前提:用户登录账户(.*)密码(.*)/ do |username,password|
  login_world(username,password)
end

Given /清空redis/ do
  clear_redis
end

Given /等待(.*)秒/ do |no|
  sleep(no.to_i)
end

Given /后滑/ do
  a=@driver.window_size
  @driver.swipe({start_x: a[:width]/2, start_y: a[:height]/2,end_x: a[:width]/1.2,end_y: a[:height]/2,duration: 200})
  sleep 2
end

Given /前滑/ do
  a=@driver.window_size
  @driver.swipe({start_x: a[:width]/2, start_y: a[:height]/2,end_x: a[:width]/5,end_y: a[:height]/2,duration: 250})
  sleep 2
end

Given /上滑/ do
  a=@driver.window_size
  @driver.swipe({start_x: a[:width]/2, start_y: a[:height]/2,end_x: a[:width]/2,end_y: a[:height]/4,duration: 200})
  sleep 2
end

Given /下滑/ do
  a=@driver.window_size
  @driver.swipe({start_x: a[:width]/2, start_y: a[:height]/2,end_x: a[:width]/2,end_y: a[:height]/1.2,duration: 200})
  sleep 2
end



Given /更新数据库的全部消息为未读未删除/ do
  update_message_disable_read_false
end

Given /删除数据库中已存在的用户名(.*)/ do |username|
  delete_userinfo username
  end

Given /删除数据库中用户(.*)的验卡信息/ do |username|
  delete_userinfo_bankinfo_ele4 username
end

Given /删除数据库中用户(.*)的银行卡信息/ do |username|
  delete_userinfo_bankinfo username
end






