class CreateApiImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :picture
      t.timestamps
    end
  end
end
