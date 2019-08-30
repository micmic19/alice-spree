Spree::AppConfiguration.class_eval do

  preference :alice_email, :string, default: "config.alice_email?"
  preference :alice_phone, :string, default: "config.alice_phone?"
  preference :alice_phone1, :string, default: "config.alice_phone1?"  
  
end