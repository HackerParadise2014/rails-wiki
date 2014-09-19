class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :version
      t.text :references

      t.timestamps
    end
  end
end
