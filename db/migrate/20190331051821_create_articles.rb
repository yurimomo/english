class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.text :word

      t.timestamps
    end
  end
end
