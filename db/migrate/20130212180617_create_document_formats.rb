class CreateDocumentFormats < ActiveRecord::Migration
  def change
    create_table :document_formats do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
