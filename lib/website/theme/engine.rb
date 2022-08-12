module Website
  module Theme
    class Engine < ::Rails::Engine
      isolate_namespace Website::Theme
    end
  end
end
