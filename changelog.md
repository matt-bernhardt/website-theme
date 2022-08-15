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

## 0.1.5

* This moves the link_helper content into
  app/helpers/website/theme/link_helper.rb with a similar internal module
  nesting. With the file at just app/helpers/link_helper.rb, the implementing
  site generated a NoMethodError when attempting to call nav_link_to.
* Also with this version (and perhaps before), implementing sites need to add
  entries for the favicon and wordmark to their app/assets/config/manifest.js.

## 0.1.6

* This adds some "real" tests to the gem, in the process making the dummy
  application a bit more real as well.
* The link_helper file is placed back at /app/helpers/link_helper.rb -
  which allows tests to pass, but the `nav_link_to` function is still not
  available to implementing sites. It is callable at LinkHelper::nav_link_to,
  but the rails functions current_page? and link_to do not appear to be callable
  from within it?
