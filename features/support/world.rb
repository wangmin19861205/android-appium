


module Help
  def login_world(username,password)
    home=Home.new(@driver)
    home.in_home
    home.in_account
    login=Login.new(@driver)
    login.login(username,password)
  end
end

  def clear_redis
    MySSH.sshconn('export PATH="$PATH:/usr/local/opt/redis/bin"; echo "FLUSHALL" | redis-cli')
  end

  def update_message_disable_read_false
    conn=MyDB.new("rui_site")
    conn.sqlquery("update user_messages set disable = 0,is_read = 0")
  end

  def delete_userinfo username
    conn=MyDB.new("rui_site")
    conn.delete("delete  from users where secure_phone='#{username}'")
  end

def delete_userinfo_bankinfo_ele4 username
  conn=MyDB.new("rui_site")
  conn.delete("update account_cards set 4element_audit = 0 where user_id = (select id from users where secure_phone = '#{username}')")
end

def delete_userinfo_bankinfo username
  conn=MyDB.new("rui_site")
  conn.delete("delete from account_cards where user_id = (select id from users where secure_phone = '#{username}')")
end

World(Help)

