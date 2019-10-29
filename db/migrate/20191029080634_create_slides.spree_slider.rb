# This migration comes from spree_slider (originally 20120222184238)
class CreateSlides < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_slides do |t|
      t.string :name
      t.text :body
      t.string :link_url
      t.boolean :published

      t.timestamps
    end
  end
end
