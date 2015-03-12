class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |p|
  		p.belongs_to :album
  		p.string :file
  		p.string :caption
	  end
  end
end
