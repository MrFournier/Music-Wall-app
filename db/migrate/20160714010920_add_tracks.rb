class AddTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |table_row|
      table_row.string :title
      table_row.string :author
      table_row.string :url
      table_row.timestamps
    end
  end
end
