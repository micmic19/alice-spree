
Spree::Taxon.class_eval do
	has_many :certificates, as: :viewable, dependent: :destroy, class_name: 'Spree::TaxonCertificate'
	has_many :interiors, as: :viewable, dependent: :destroy, class_name: 'Spree::TaxonInterior'

  def properties
		parse_taxon_props "properties"
  end

	private
	def parse_taxon_props param 
		begin
      if self.taxon_props.nil?
        return ''
      else
			 data = ActiveSupport::JSON.decode(self.taxon_props)
			 data[param]
      end
		rescue JSON::ParserError
			data = {"properties"=>self.taxon_props}
			data[param].html_safe
		end
	end
end
