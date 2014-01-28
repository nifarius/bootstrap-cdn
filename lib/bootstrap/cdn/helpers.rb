module Bootstrap
  module CDN
    module Helpers
      def bootstrap_stylesheet_include_tag(options = {})
        if Bootstrap::CDN::OFFLINE and !options[:force]
          stylesheet_link_tag "bootstrap.#{Bootstrap::CDN::BOOTSTRAP_VERSION}.css"
        else
          stylesheet_link_tag Bootstrap::CDN::URL[:stylesheet]
        end
      end

      def bootstrap_javascript_include_tag(options = {})
        if Bootstrap::CDN::OFFLINE and !options[:force]
          javascript_include_tag "bootstrap.#{Bootstrap::CDN::BOOTSTRAP_VERSION}.js"
        else
          javascript_include_tag Bootstrap::CDN::URL[:javascript]
        end
      end
    end
  end
end
