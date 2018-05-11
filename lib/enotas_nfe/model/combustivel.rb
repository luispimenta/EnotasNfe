module EnotasNfe
  module Model
    class Combustivel

      include Virtus.model
      require "enotas_nfe/model/cide"

      attribute :cide, Cide
      attribute :codigoProdutoANP, String
      attribute :percentualGasNatural, String
      attribute :codif, String
      attribute :quantidadeFaturadaTempAmbiente, Float
      attribute :ufConsumo, String

    end
  end
end
