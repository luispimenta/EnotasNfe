module EnotasNfe
  module Model
    class Volume

      include Virtus.model

      attribute :quantidade, Float
      attribute :especie, String
      attribute :marca, String
      attribute :numeracao, String
      attribute :pesoLiquido, Float
      attribute :pesoBruto, Float

    end
  end
end
