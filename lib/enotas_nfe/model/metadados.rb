module EnotasNfe
  module Model
    class Metadados

      include Virtus.model
      require "enotas_nfe/model/cidade_prestacao"
      require "enotas_nfe/model/percentual_tributos_federal"
      require "enotas_nfe/model/info_comercio_exterior"

      attribute :cidadeprestacao, CidadePrestacao
      attribute :valorTotalRecebido, Float
      attribute :regimeApuracaoTributosSN, String
      attribute :valorPercentualTributosFederal, PercentualTributosFederal
      attribute :InfoComercioExterior, InfoComercioExterior
    end
  end
end
