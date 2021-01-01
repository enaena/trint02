class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string  :title,         null: false
      t.date    :day,           null: false
      t.time    :start_time,    null: false
      t.time    :end_time,      null: false
      t.string  :place,         null: false
      t.text    :place_url
      t.integer :levelev_id ,   null: false
      t.string  :limit 
      t.string  :number,        null: false
      t.string  :cost,          null: false
      t.text    :text,          null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
