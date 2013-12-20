# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Journal::Application.config.secret_key_base = '37e8735042ca66bcb6cf2347e5560d558e001e44332d748aec5407785a9118a7e02b0a8b1395ebf5eba1569bc064e25e6a880e5b06a798b778016f481b950b4a'
