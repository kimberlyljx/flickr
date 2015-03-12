user = User.create(username: "Kimberly", password: "123")
default_album = Album.create(title: "Default")
user.albums << default_album
default_picture = Photo.create(caption: "Default picture")
default_album.photos << default_picture
