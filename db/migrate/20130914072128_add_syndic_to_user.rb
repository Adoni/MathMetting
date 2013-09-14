class AddSyndicToUser < ActiveRecord::Migration
  def change
    add_column :users, :syndic, :string
  end
end
