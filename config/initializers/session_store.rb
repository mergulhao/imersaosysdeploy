# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_imersaosysdeploy_session',
  :secret      => 'f09e69e55b8b3161d0d9f05d0b63579e04263854f8fb2fcb3c8d1c055c09bac37108cda7ec4ad7eff962a9aac737f0d55a5fb49b9eb15fa160bf8da79e093910'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
