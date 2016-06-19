# This migration comes from plotline (originally 20160212172219)
# This migration comes from plotline (originally 20160208102834)
class CreatePlotlineImages < ActiveRecord::Migration
  def change
    create_table :plotline_images do |t|
      t.string :image
      t.integer :width
      t.integer :height
      t.float :ratio
      t.integer :file_size
      t.string  :content_type
      t.json :exif

      t.timestamps
    end
  end
end
