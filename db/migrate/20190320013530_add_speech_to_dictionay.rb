class AddSpeechToDictionay < ActiveRecord::Migration[5.2]
  def change
  	add_column :dictionaries, :speech, :string
  end
end
