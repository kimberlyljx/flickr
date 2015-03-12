class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |a|
  		a.belongs_to :user
  		a.string :title
  	end
  end
end
