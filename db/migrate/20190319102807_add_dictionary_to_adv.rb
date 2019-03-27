class AddDictionaryToAdv < ActiveRecord::Migration[5.2]
  def change
  	add_column :dictionaries, :adv, :string
  	add_column :dictionaries, :verb, :string
  end
end
