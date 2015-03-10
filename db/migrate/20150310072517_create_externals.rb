class CreateExternals < ActiveRecord::Migration
  def change
    create_table :externals do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.timestamps null: false
    end
  end
end
