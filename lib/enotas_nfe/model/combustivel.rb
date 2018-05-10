module EnotasNfe
  module Model
    class Combustivel

      include Virtus.model
      require "enotas_nfe/model/cide"

      attribute :cide, Cide
      attribute :codigoProdutoANP, String
      attribute :percentualGasNatural, Float
      attribute :codif, Integer
      attribute :quantidadeFaturadaTempAmbiente, Float
      attribute :ufConsumo, String

    end
  end
end
