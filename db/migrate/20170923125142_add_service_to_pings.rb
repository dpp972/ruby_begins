class AddServiceToPings < ActiveRecord::Migration[5.1]
  def change
    add_reference :pings, :service, foreign_key: true
  end
end
