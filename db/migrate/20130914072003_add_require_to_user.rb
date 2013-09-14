class AddRequireToUser < ActiveRecord::Migration
  def change
    add_column :users, :require, :string
  end
end
