module EnotasNfe
  module Model
    class InfoComercioExterior

      include Virtus.model

      attribute :modoPrestacao, Integer
      attribute :vinculoPrestacao, Integer
      attribute :tipoMoeda, Integer
      attribute :valorServicoMoedaEstrangeira, Integer
      attribute :mecanismoApoioPrestador, Integer
      attribute :mecanismoApoioTomador, Integer
      attribute :movimentacaoTemporariaBens, Integer
      attribute :compartilharComMDIC, Integer
      attribute :codigoNBSCorrespondenteaoServicoPrestado, String
    end
  end
end
