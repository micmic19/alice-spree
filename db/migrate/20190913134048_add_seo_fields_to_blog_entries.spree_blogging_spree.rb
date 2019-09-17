# This migration comes from spree_blogging_spree (originally 20180923111630)
class AddSeoFieldsToBlogEntries < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_blog_entries, :meta_description, :string
    add_column :spree_blog_entries, :meta_keywords, :string
  end
end
