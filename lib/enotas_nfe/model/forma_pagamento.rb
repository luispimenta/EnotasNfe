module EnotasNfe
  module Model
    class FormaPagamento

      include Virtus.model

      attribute :tipo, String
      attribute :valor, Float
      
    end
  end
end
