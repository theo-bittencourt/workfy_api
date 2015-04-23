module API
  module V1
    class Root < Grape::API
      helpers API::V1::Helpers::Base
      helpers API::V1::SharedParams::Base

      mount API::V1::Jobs
    end
  end
end
