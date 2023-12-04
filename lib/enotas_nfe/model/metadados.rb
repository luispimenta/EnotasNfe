module EnotasNfe
  module Model
    class Metadados

      include Virtus.model
      require "enotas_nfe/model/cidade_prestacao"
      require "enotas_nfe/model/percentual_tributos_federal"

      attribute :cidadeprestacao, CidadePrestacao
      attribute :valorTotalRecebido, Float
      attribute :regimeApuracaoTributosSN, String
      attribute :valorPercentualTributosFederal, PercentualTributosFederal
    end
  end
end
