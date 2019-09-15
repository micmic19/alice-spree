
module MyStore
  module TaxonDecorator
    def certificates
      parse_description "sertificates"
    end
    def description_
		parse_description "description"
    end
    def properties
		parse_description "properties"
    end
    def interior
		parse_description "interior"
    end
	private
	def parse_description param 
		begin
			data = ActiveSupport::JSON.decode(self.description)
			data[param]
		rescue JSON::ParserError
			data = {"description"=>self.description, "sertificates"=>[], "properties"=>[]}
			data[param]
		end
	end
  end
end
Spree::Taxon.prepend MyStore::TaxonDecorator


