class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :ename
      t.string :cname
      t.string :flag
      t.string :callsign

      t.timestamps
    end
  end
end
