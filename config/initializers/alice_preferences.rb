Spree::AppConfiguration.class_eval do

  preference :alice_email, :string, default: "config.alice_email?"
  preference :alice_phone, :string, default: "config.alice_phone?"
  preference :alice_phone1, :string, default: "config.alice_phone1?"  
  preference :alice_title, :string, default: "config.alice_title?"
  preference :alice_step_option_id, :integer, default: "config.alice_step_option_id?"
  preference :alice_certimg, :string, default: "alice_certimg?"
end