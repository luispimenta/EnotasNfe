module EnotasNfe
  module Model
    class Pedido

      include Virtus.model

      attribute :presencaConsumidor, String
      attribute :pagamento, Pagamento
      
    end
  end
end
