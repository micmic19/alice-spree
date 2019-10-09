object @taxon_interior
attributes *taxon_interior_attributes
attributes :viewable_type, :viewable_id
Spree::TaxonInterior.styles.each do |k, _v|
  node("#{k}_url") { |i| main_app.url_for(i.url(k)) }
end
