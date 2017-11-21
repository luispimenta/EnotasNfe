module EnotasNfe
  class Client
    include Connection
    include Request
    include Facades
    include Endpoints

    DEFAULT_ENDPOINT = "https://api.enotasgw.com.br/v1"

    attr_accessor :auth_token, :endpoint

    def initialize(auth_token, endpoint = nil)
      @auth_token = auth_token
      @endpoint = endpoint || DEFAULT_ENDPOINT      
    end

  end
end
