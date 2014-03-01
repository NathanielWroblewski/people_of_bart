class AddLineCutterToPeople < ActiveRecord::Migration
  def change
    add_column :people, :line_cutter, :boolean, default: false, null: false
  end
end
