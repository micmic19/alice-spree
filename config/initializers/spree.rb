# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.logo = 'alice_logo.svg'
  config.alice_phone = '+7 (812) 331-14-60'
  config.alice_phone1 = '+7 (921) 740-66-92'  
  config.alice_email = 'sale@alice.ru'    
  config.alice_title = 'Линолеум оптом'
  config.allow_guest_checkout = true
  config.alice_step_option_id = 4
  config.alice_certimg = '/cert.jpg'
  config.currency = 'RUB'
  country = Spree::Country.find_by_name('Russian Federation')
  config.default_country_id = country.id if country.present?
end

# Configure Spree Dependencies
#
# Note: If a dependency is set here it will NOT be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will make the dependency value go away.
#
Spree.dependencies do |dependencies|
  # Example:
  # Uncomment to change the default Service handling adding Items to Cart
  # dependencies.cart_add_item_service = 'MyNewAwesomeService'
end

Spree.user_class = "Spree::User"

Spree::Frontend::Config[:locale] = :ru
Spree::Backend::Config[:locale] = :ru
Spree::Auth::Config[:registration_step] = false
Spree::Config[:track_inventory_levels] = false
#ALICE
Spree::Config[:layout] = 'application'
Spree::Frontend::Config[:coupon_codes_enabled] = false
Spree::PermittedAttributes.taxon_attributes << :taxon_props
Spree::FiltersConfiguration::Config.allowed_sortings += [:descend_by_updated_at, :ascend_by_master_price, :descend_by_master_price, :ascend_by_name, :descend_by_name]
