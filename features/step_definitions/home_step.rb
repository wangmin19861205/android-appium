
Given /用户打开APP,验证title/ do
  mobile=Home.new(@driver)
  data=mobile.check_title
  expect(data).to eq("中瑞财富")
end

Given /用户进入首页/ do
  mobile=Home.new(@driver)
  data=mobile.in_home
end


Given /首页(.*)项目卡片等于:/ do |loantype,table|
  mobile=Home.new(@driver)
  assdata=[]
  table.raw.each do |item|
    item.delete('')
    assdata.push item
  end
  if loantype == '新手'
    data=mobile.newloancard
  elsif loantype == ''
    data=mobile.loancard
  end
  expect(data).to eq(assdata)
end

Given /验证消息数量:(.*)/ do |no|
  mobile=Home.new(@driver)
  data=mobile.message
  expect(data).to eq(no)
end

Given /进入全部项目页/ do
  mobile=Home.new(@driver)
  mobile.in_allproject
end

Given /进入我的账户页/ do
  mobile=Home.new(@driver)
  mobile.in_account
end

Given /进入设置页/ do
  mobile=Home.new(@driver)
  mobile.in_myset
end

Given /点击第(.*)个项目卡片/ do |no|
  mobile=Home.new(@driver)
  mobile.get_general_loan(no)
end



