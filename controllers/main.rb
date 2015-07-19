get "/home" do
  erb :"main/homepage"
end

get "/add_menu" do
  current_user
  erb :"main/add_menu"
end

get "/view_menu" do
  current_user
  erb :"main/view_menu"
end

get "/update_menu" do
current_user
  erb :"main/update_menu"
end

get "/delete_menu" do
current_user
  erb :"main/delete_menu"
end

get "/login_menu" do
  current_user
  erb :"main/login_menu"
end


def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  else
    redirect "/login"
  end
end