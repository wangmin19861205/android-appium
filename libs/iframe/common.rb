require_relative 'http_methods'

class Common
  class << self
    include Httpmethod

    # 获取可投资的推荐项目ID列表
    def invest_loan_list conn
      loanids=Resultdiy.new(conn.sqlquery("select id from loans where disabled = 0 and status='INVEST' and special_loan is null and special_user_id is null and loan_type = 'RECOMMEND_PROJECT' and invest_open_time < now() order by case loan_period when 'SHORT' then 1 when 'MIDDLE' then 2 when 'LONG' then 3 else 4 end asc , invest_open_time asc")).result_to_value(:id)
      loanids.sample
    end

    # 获取注册验证码
    def register_code conn,phone
      sql="select content from sms_records where numbers = '#{phone}' order by id desc limit 1"
      codetext=(Resultdiy.new(conn.sqlquery(sql)).result_to_list[0])[:content]
      code=/您的手机注册验证码为：(.*)，验证码10分钟内有效/.match(codetext).to_a[1]
      return code
    end



  end
end


