require "bootstrap/cdn/version"
require 'bootstrap/cdn/helpers'
require 'bootstrap/cdn/engine' if ::Rails.version >= '3.1'
require 'bootstrap/cdn/railtie'

module Bootstrap
  module CDN
    BOOTSTRAP_VERSION = "3.1.0"
    OFFLINE = (Rails.env.development? or Rails.env.test?)
    URL = {
        stylesheet: "//netdna.bootstrapcdn.com/bootstrap/#{BOOTSTRAP_VERSION}/css/bootstrap.min.css",
        javascript: "//netdna.bootstrapcdn.com/bootstrap/#{BOOTSTRAP_VERSION}/js/bootstrap.min.js"
    }
  end
end
