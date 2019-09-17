class Spree::BlogEntryImage < Spree::Image
  has_one_attached :attachment
  
end