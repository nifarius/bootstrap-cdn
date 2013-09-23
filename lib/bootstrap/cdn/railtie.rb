module Bootstrap
  module CDN
    class Railtie < ::Rails::Railtie
      initializer 'bootstrap_cdn.action_view' do |app|
        ActiveSupport.on_load(:action_view) do
          include Bootstrap::CDN::Helpers
        end
      end
    end
  end
end