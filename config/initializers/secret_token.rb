# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# This file is under the .gitignore

TestHub::Application.config.secret_key_base = 'a1eed332a93478fa28d127331e51e12d0a47cd718d5b046d7033d176f210368becbd71bd7068bbc81b3059d40eae13b38557407ed29e925e16a0cd029c869bc8' 
raise ArgumentError, 'a secret_key is required in /config/initializers/secret_token.rb:15' unless TestHub::Application.config.secret_key_base.present?
