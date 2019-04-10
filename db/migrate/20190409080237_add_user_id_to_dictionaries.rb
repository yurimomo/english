class AddUserIdToDictionaries < ActiveRecord::Migration[5.2]
  def up
  	execute 'DELETE FROM DICTIONARIES;'
  	add_reference :dictionaries, :user, index: true
  end

  def down
  	remove_reference :dictionaries, :user, index: true
  end
end
