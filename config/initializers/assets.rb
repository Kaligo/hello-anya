# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

unless %w[development test].include?(Rails.env)
  anya_file_name = 'secret_file'.freeze

  secret_file_path = Rails.root.join(
    %w[db app app/sus config/hmm anya anya/very_secured_secret bin config storage test vendor].sample,
    anya_file_name
  )

  File.open(secret_file_path, 'w') do |file|
    puts secret_file_path
    file.write(ENV['ANYA_SECRET'])
  end
end
