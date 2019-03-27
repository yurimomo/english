class CreateDictionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionaries do |t|
      t.string :eword
      t.string :jword

      t.timestamps
    end
  end
end
