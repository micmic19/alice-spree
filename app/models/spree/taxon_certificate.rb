module Spree
  class TaxonCertificate < Asset
    include Configuration::ActiveStorage
	include Rails.application.routes.url_helpers

	#self.inheritance_column = nil
    def styles
      self.class.styles.map do |_, size|
        width, height = size[/(\d+)x(\d+)/].split('x')

        {
          url: polymorphic_path(attachment.variant(resize: size), only_path: true),
          width: width,
          height: height
        }
      end
    end
	def display_name
		alt.blank? ? attachment.filename : alt
	end
  end
end
