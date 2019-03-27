class AddGrammerToDictionary < ActiveRecord::Migration[5.2]
  def change
  	add_column :dictionaries, :grammer, :string
  end
end
