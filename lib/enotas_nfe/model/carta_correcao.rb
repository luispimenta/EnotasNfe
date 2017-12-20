module EnotasNfe
  module Model
    class CartaCorrecao

      include Virtus.model

      attribute :id, String
      attribute :ambienteEmissao, String
      attribute :numero, Integer
      attribute :correcao, String
      attribute :nfe, Nfe

    end
  end
end
