module EnotasNfe
  module Model
    class FormaPagamento

      include Virtus.model

      attribute :tipo, String
      attribute :valor, Float
      attribute :credenciadoraCartao, CredenciadoraCartao
      
    end
  end
end
