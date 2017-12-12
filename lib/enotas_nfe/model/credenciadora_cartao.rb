module EnotasNfe
  module Model
    class CredenciadoraCartao

      include Virtus.model

      attribute :tipoIntegracaoPagamento, String #"IntegradoAoSistemaDeGestao" ou "NaoIntegradoAoSistemaDeGestao"
      #Os atributos abaixo são opcionais caso o atributo "tipoIntegracaoPagamento" seja "NaoIntegradoAoSistemaDeGestao"
      attribute :cnpjCredenciadoraCartao, String
      attribute :bandeira, String
      attribute :autorizacao, String
      
    end
  end
end
