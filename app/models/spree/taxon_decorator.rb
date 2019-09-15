
Spree::Taxon.class_eval do
	has_many :certificates, as: :viewable, dependent: :destroy, class_name: 'Spree::TaxonCertificate'
	has_many :interiors, as: :viewable, dependent: :destroy, class_name: 'Spree::TaxonInterior'
    def description_
		parse_description "description"
    end
    def properties
		parse_description "properties"
    end
	private
	def parse_description param 
		begin
			data = ActiveSupport::JSON.decode(self.description)
			data[param]
		rescue JSON::ParserError
			data = {"description"=>self.description}
			data[param]
		end
	end
end
