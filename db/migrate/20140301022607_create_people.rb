class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :caption
      t.string :photo_cred
      t.timestamps
    end
  end
end
