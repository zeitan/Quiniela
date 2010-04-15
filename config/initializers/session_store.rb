# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quiniela_session',
  :secret      => '17a101da9237426c8e188b2c727e1e370196495bcaf19bd4dba399d225bcbfdd62caa77edeb2ed4dcf95f332580cdf8a37104e8c45cea78001e2709333e9306b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
