class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :school
      t.string :title
      t.date :arrivedate
      t.time :arrivetime
      t.date :leavedate
      t.time :leavetime
      t.string :gender

      t.timestamps
    end
  end
end
