enable :sessions

# main page. post-sign-up redirects here
get '/' do
  @albums = Album.all
  erb :index
end

get '/users/login' do
	erb :login
end

post '/users/sign_up' do
	@user = User.create(params[:user])
	session[:user_id] = @user.id
	redirect to "/"
end

post '/users/login' do
	@user = User.authenticate(params[:user][:username], params[:user][:password])
	if @user
		session[:user_id] = @user.id
		redirect to '/'
	else
		redirect to '/'
	end
end

delete '/logout' do
	session.clear
	redirect to '/'
end

get '/users/:user_id/albums' do
	@user = User.find params[:user_id]
	@albums = @user.albums
	erb :user_albums
end

get '/albums/:album_id' do
	@album = Album.find(params[:album_id])

	erb :photos_in_album
end

get '/albums/:album_id/:photo_id' do
	@album = Album.find(params[:album_id])
	@photo = @album.photos.find(params[:photo_id])
	erb :photo
end

post '/albums/:album_id/photos' do
	@album = Album.find(params[:album_id])
	@photo = Photo.new(album_id: @album.id)
	@photo.file = params[:image]
	byebug
	@photo.caption = params[:photo][:caption]
	@photo.save
	redirect to "/albums/#{@album.id}"
end


get '/albums/new' do
	erb :new_album
end

post '/albums' do
	@album = Album.create(params[:album])
	@album.user_id = session[:user_id]
	@album.save
	redirect to '/users/#{session[:user_id]}/albums'
end