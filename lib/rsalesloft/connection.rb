require "faraday"
require "faraday_middleware"
require "json"

module RSalesloft
  class Connection 
    class << self
      def get(path, options = {})
        connection.get(
          path, options
        ).body
      end
    
      def post(path, req_body)
        connection.post do |req|
          req.url(path)
          req.body = req_body
        end.body
      end
    
      def put(path, options = {})
        connection.put(path, options).body
      end
    
      def delete(path, options = {})
        connection.delete(options).body
      end

      private

      def connection
        Faraday.new(url: "https://api.salesloft.com/v2", headers: {
          accept: 'application/json',
          'Authorization' => "Bearer #{RSalesloft::Config.api_key}"
        }) do |conn|
          conn.request :json
          conn.response :json
          conn.response   :logger
          conn.adapter Faraday.default_adapter
        end
      end
    end
  end
end