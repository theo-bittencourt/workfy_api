module API
  module V1
    class Jobs < Grape::API
      version 'v1'
      format 'json'

      resource :jobs do
        params do
          requires :content_url
          requires :callback_url
        end

        get 'web2pdf' do
          sidekiq_client.push('class' => 'Web2PdfWorker', 'args' => [params.content_url, params.callback_url])
          {status: 'ok'}
        end
      end
    end
  end
end
