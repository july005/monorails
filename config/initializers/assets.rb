# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootsy/gallery-loader.gif )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

#CSS

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( animate.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrapTheme.css )
Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.precompile += %w( general.css )
Rails.application.config.assets.precompile += %w( magnific-popup.css )
Rails.application.config.assets.precompile += %w( owl.carousel.css )
Rails.application.config.assets.precompile += %w( owl.theme.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( bootsy.css )

#Javascripts
Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile += %w( articles.coffee )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( classie.js )
Rails.application.config.assets.precompile += %w( comments.coffee )
Rails.application.config.assets.precompile += %w( html5shiv.js )
Rails.application.config.assets.precompile += %w( jquery-1.10.2.js )
Rails.application.config.assets.precompile += %w( jquery-1.9.1.min.js )
Rails.application.config.assets.precompile += %w( jquery.corner.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.js )
Rails.application.config.assets.precompile += %w( modernizr-2.8.3.min.js )
Rails.application.config.assets.precompile += %w( modernizr-custom.js )
Rails.application.config.assets.precompile += %w( owl.carousel.js )
Rails.application.config.assets.precompile += %w( PIE_IE678.js )
Rails.application.config.assets.precompile += %w( PIE_IE9.js )
Rails.application.config.assets.precompile += %w( script.js )
Rails.application.config.assets.precompile += %w( stickUp.min.js )
Rails.application.config.assets.precompile += %w( uiMorphingButton_inflow.js )
Rails.application.config.assets.precompile += %w( welcome.coffee )
Rails.application.config.assets.precompile += %w( wow.min.js )
