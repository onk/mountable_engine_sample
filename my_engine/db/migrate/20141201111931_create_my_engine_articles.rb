class CreateMyEngineArticles < ActiveRecord::Migration
  def change
    create_table :my_engine_articles do |t|
      t.references :user, index: true
      t.text :body

      t.timestamps
    end
  end
end
