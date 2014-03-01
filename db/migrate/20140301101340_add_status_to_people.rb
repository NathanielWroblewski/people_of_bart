class AddStatusToPeople < ActiveRecord::Migration
  def change
    add_column :people, :status, :string, default: 'pending', null: false
  end
end
