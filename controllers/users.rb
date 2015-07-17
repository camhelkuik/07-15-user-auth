get "/sign_up" do
  erb :"/login/sign_up_form"
end

get "/save_sign_up" do
  the_password = BCrypt::Password.create(params["password"])
  new_user = User.add({"email" => params["email"], "password" => the_password})
  new_user.save  
  
  erb :"/login/password_success"
end

get "/login" do
  erb :"/login/login_form"
end

get "/verify_login" do
  attempted_password = params["password"]
  user = User.search_rows("email", params["email"])
  # Assuming there is a user with the given email address...
  # Make a new BCrypt object with the **password from the database**.
  actual_password = BCrypt::Password.new(user[0].password)
  
  session[:user_id] = user[0].id
  # So, an example:
  # actual_password = BCrypt::Password.new("$2a$10$87jFZs7pY2Fh33HR.lA9ouVLzevh45esv0UjdYF/b1jOGKC.YtfG2")

  if actual_password == attempted_password
    erb :"/login/password_success"
  else
    erb :"/login/login_form"
  end
end

get "/logout" do
  session.clear
  redirect "/home"
end
