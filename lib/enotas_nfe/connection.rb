require 'faraday_middleware'

module EnotasNfe
  module Connection
    private

    def connection
      options = {
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "User-Agent": "Enotas ruby client"
        },
        url: endpoint,
        ssl: {verify: false}
      }

      Faraday.new(options) do |connection|
        connection.use Middleware, auth_token
        connection.use Faraday::Response::ParseJson

        connection.request :multipart
        connection.adapter :net_http
      end
    end
  end
end
