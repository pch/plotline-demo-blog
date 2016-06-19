# This migration comes from plotline (originally 20150831131759)
class CreatePlotlineEntries < ActiveRecord::Migration
  def change
    create_table :plotline_entries do |t|
      t.string :type, index: true
      t.string :title
      t.string :slug, index: true
      t.text :body
      t.json :payload
      t.datetime :published_at
      t.integer :status, default: 0, index: true
      t.text :tags, array: true, default: []
      t.integer :parent_id, index: true
      t.string :checksum

      t.timestamps null: false
    end

    add_index :plotline_entries, :tags, using: 'gin'
  end
end
