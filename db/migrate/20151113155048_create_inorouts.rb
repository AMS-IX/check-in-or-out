class CreateInorouts < ActiveRecord::Migration
  def change
    create_table :inorouts do |t|
      t.string :name
      t.text :serials
      t.boolean :RMA
      t.boolean :testing
      t.boolean :checkin
      t.boolean :checkout
      t.date :date

      t.timestamps null: false
    end
  end
end
