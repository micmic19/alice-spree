object @taxon_сertificate
attributes *taxon_сertificate_attributes
attributes :viewable_type, :viewable_id
#Spree::TaxonCertificate.styles.each do |k, _v|
#  node("#{k}_url") { |i| main_app.url_for(i.url(k)) }
#end
node("url") { |i| main_app.rails_blob_url(i.attachment) }
