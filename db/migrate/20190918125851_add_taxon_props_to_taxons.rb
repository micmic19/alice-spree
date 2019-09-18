class AddTaxonPropsToTaxons < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_taxons, :taxon_props, :text
  end
end
