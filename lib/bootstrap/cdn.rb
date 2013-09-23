require "bootstrap/cdn/version"
require 'bootstrap/cdn/helpers'
require 'bootstrap/cdn/engine' if ::Rails.version >= '3.1'
require 'bootstrap/cdn/railtie'

module Bootstrap
  module CDN
    BOOTSTRAP_VERSION = "3.0.0"
    AWESOME_FONT_VERSION = "3.2.1"
    OFFLINE = (Rails.env.development? or Rails.env.test?)
    URL = {
        stylesheet: "//netdna.bootstrapcdn.com/bootstrap/#{BOOTSTRAP_VERSION}/css/bootstrap.no-icons.min.css",
        javascript: "//netdna.bootstrapcdn.com/bootstrap/#{BOOTSTRAP_VERSION}/js/bootstrap.min.js",
        font: "//netdna.bootstrapcdn.com/font-awesome/#{AWESOME_FONT_VERSION}/css/font-awesome.min.css"
    }
  end
end
