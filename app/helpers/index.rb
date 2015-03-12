helpers do
  
  def current_user
  if session[:user_id]
  	User.find(session[:user_id])
  else
  	nil
  end
end

  def logged_in?
  	if current_user
  		true
  	else
  		false
  	end
  end

end
