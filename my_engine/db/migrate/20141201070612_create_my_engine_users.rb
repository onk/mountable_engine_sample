class CreateMyEngineUsers < ActiveRecord::Migration
  def change
    create_table :my_engine_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
