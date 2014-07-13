module Rvine
  class Client
    module Request
      [:get, :post, :delete, :put, :patch].each{ |verb| define_method(verb){ |path, params={}| request(verb, path, params)}}

      def connection
        options = {
          url: ROOT_URL,
          headers: {
            accept: 'application/json',
            user_agent: "com.vine.iphone/1.0.3 (unknown, iPhone OS 6.1.0, iPhone, Scale/2.000000)"
          },
          request: {
            open_timeout: 5,
            timeout: 10
          },
          ssl: {
            verify: true
          }
        }

        @connection ||= Faraday.new(options) do |faraday|
          faraday.request  :url_encoded
          faraday.response :json
          faraday.adapter  :net_http
        end
      end

      def request(method, path, params)
        response = connection.send(method, path, params) do |req|
          req[:vine_session_id] = @key if @key
        end
        response.body['data']
      end
    end
  end
end
