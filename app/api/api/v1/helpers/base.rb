module API
  module V1
    module Helpers
      module Base
        def warden
          request.env['warden']
        end

        def current_user
          warden.user
        end

        def authenticate!
          warden.authenticate!
        end

        def translate(*args)
          key = args.first
          if key.is_a?(String) && (key[0] == '.')
            key = [
              'api',
              version,
              method_name.split(' ')[1..-1].reject{|i| i == '/'}.join('.'),
              key
            ].join('.')

            args[0] = key
          end

          I18n.translate(*args)
        end
        alias :t :translate

        def sidekiq_client
          @sidekiq_client ||= Sidekiq::Client.new
        end
      end
    end
  end
end
