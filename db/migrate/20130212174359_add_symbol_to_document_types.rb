class AddSymbolToDocumentTypes < ActiveRecord::Migration
  def change
    add_column :document_types, :symbol, :string 
  end
end
