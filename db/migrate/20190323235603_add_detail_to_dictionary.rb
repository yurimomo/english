class AddDetailToDictionary < ActiveRecord::Migration[5.2]
  def change
  	add_column :dictionaries, :detail, :string
  end
end
