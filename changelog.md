# Website theme changelog

## 0.1.1

* First version with a name
* No actual theme content yet

## 0.1.2

* Adds app/ directory contents
  * app/helpers/link_helper.rb
  * app/views/layouts/**.html.erb
* Tests still pass

## 0.1.3

* Adds sassc-rails as a dependency in gemspec
  This was needed because implementing the 0.1.2 gem version breaks the
  implementing site with an error "cannot load such file -- sassc".

## 0.1.4

* Adds the /vendor/assets directory, including images and stylesheets.
  The 0.1.3 release still appears to be broken, as implementing sites get an
  error "Sprockets::Rails::Helper::AssetNotFound" for favicon.ico.
