module API
  class Root < Grape::API
    prefix 'api'
    format 'json'

    mount API::V1::Root

    resource :health do
      get do
        {status: 'ok'}
      end
    end
  end
end
