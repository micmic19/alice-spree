module SpreeApiV1TaxonCertificatesHelper

  @@taxon_certificate_attributes = [
    :id, :position, :attachment_content_type, :attachment_file_name, :type, :attachment_updated_at, :alt
  ]

  def taxon_certificate_attributes
    @@taxon_certificate_attributes
  end

end
