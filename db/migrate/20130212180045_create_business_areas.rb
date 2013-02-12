class CreateBusinessAreas < ActiveRecord::Migration
  def change
    create_table :business_areas do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
