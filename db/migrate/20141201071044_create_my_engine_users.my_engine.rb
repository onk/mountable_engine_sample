# This migration comes from my_engine (originally 20141201070612)
class CreateMyEngineUsers < ActiveRecord::Migration
  def change
    create_table :my_engine_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
