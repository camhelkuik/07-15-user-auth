get "/home" do
  erb :"main/homepage"
end

get "/add_menu" do
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect erb :"/login/login_form"
    end
  end

  erb :"main/add_menu"
end

get "/view_menu" do
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect erb :"/login/login_form"
    end
  end
  
  erb :"main/view_menu"
end

get "/update_menu" do
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect erb :"/login/login_form"
    end
  end
  
  erb :"main/update_menu"
end

get "/delete_menu" do
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect erb :"/login/login_form"
    end
  end
  
  erb :"main/delete_menu"
end

get "/login_menu" do
  erb :"main/login_menu"
end