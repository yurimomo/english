class RemoveAdvFromDictionary < ActiveRecord::Migration[5.2]
  def change
    remove_column :dictionaries, :adv, :string
    remove_column :dictionaries, :verb, :string
  end
end
