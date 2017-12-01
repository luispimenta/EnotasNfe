module EnotasNfe
  module Model
    class Servico

      include Virtus.model

      attribute :descricao, String
      attribute :aliquotaIss, Float
      attribute :issRetidoFonte, Boolean
      attribute :cnae, String
      attribute :codigoServicoMunicipio, String
      attribute :descricaoServicoMunicipio, String
      attribute :itemListaServicoLC116, String
      attribute :ufPrestacaoServico, String
      attribute :municipioPrestacaoServico, String
      attribute :valorCofins, Decimal
      attribute :valorInss, Decimal
      attribute :valorIr, Decimal
      attribute :valorPis, Decimal
      attribute :valorCsll, Decimal

    end
  end
end
