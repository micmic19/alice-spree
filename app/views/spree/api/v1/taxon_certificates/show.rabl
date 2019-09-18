object @taxon_сertificate
attributes *image_attributes
attributes :viewable_type, :viewable_id
Spree::TaxonCertificate.styles.each do |k, _v|
  node("#{k}_url") { |i| main_app.url_for(i.url(k)) }
end
