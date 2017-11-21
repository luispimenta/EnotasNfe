module EnotasNfe
  class Client
    include Connection
    include Request
    include Facades
    include Endpoints

    NFSE_ENDPOINT = "https://api.enotasgw.com.br/v1"
    NFE_ENDPOINT = "https://api.enotasgw.com.br/v2"

    attr_accessor :auth_token, :endpoint

    def initialize(auth_token, endpoint)
      @auth_token = auth_token
      if endpoint == 'nfe'
        @endpoint = NFE_ENDPOINT
      else
        @endpoint = NFSE_ENDPOINT      
      end
    end

  end
end
