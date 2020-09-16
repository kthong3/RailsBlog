class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :author
      t.string :title,  null: false
      t.text :text,     null: false

      t.timestamps
    end
  end
end
