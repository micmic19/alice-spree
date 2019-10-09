module Spree
  class TaxonCertificate < Asset
    #include Configuration::ActiveStorage
	
  validate :check_attachment_presence

  has_one_attached :attachment

  def check_attachment_presence
    unless attachment.attached?
      attachment.purge
      errors.add(:attachment, :attachment_must_be_present)
    end
  end


	#self.inheritance_column = nil
   # def styles
   #   self.class.styles.map do |_, size|
   #     width, height = size[/(\d+)x(\d+)/].split('x')

#        {
#          url: polymorphic_path(attachment.variant(resize: size), only_path: true),
#          width: width,
#          height: height
#        }
#      end
#    end
  	include Rails.application.routes.url_helpers

    def display_name
  		alt.blank? ? attachment.filename : alt
  	end
  end
end
