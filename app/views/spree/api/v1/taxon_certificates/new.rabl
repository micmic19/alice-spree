object false
node(:attributes) { [*taxon_certificate_attributes] }
node(:required_attributes) { required_fields_for(Spree::TaxonCertificate) }
