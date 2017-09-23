class CreatePings < ActiveRecord::Migration[5.1]
  def change
    create_table :pings do |t|
      t.datetime :time
      t.string :stcode

      t.timestamps
    end
  end
end
