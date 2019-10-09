module SpreeApiV1TaxonInteriorsHelper

  @@taxon_interior_attributes = [
    :id, :position, :attachment_content_type, :attachment_file_name, :type, :attachment_updated_at, :alt
  ]

  def taxon_interior_attributes
    @@taxon_interior_attributes
  end

end
