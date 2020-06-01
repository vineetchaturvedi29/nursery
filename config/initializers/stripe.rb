Rails.configuration.stripe = {
  publishable_key:  Rails.application.secrets.stripe_publishable_key,
  secret_key:       Rails.application.secrets.stripe_secret_key
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# Rails.configuration.stripe = {
#   publishable_key:  "pk_test_YC94Pic1v7jCyzBhi0PX8rLw00cNFJAq3s",
#   secret_key:       "sk_test_C9vU5k64PrDngzzCvGH9CQCa00ZyEvGxwN"
# }

# Stripe.api_key = Rails.configuration.stripe[:secret_key]