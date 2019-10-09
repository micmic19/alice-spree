object false
node(:attributes) { [*taxon_interior_attributes] }
node(:required_attributes) { required_fields_for(Spree::TaxonInterior) }
