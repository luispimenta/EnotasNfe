module EnotasNfe
  module Model
    class CaracteristicaPrefeitura
      include Virtus.model

      attribute :tipoAutenticacao, Integer
      attribute :assinaturaDigital, Integer
      attribute :helpTipoAutenticacao, HelpTipoAutenticacao
      attribute :campoLoginProvedor, Integer
      attribute :suportaCancelamento, Boolean
      attribute :usaAEDF, Boolean
      attribute :usaRegimeEspecialTributacao, Boolean
      attribute :usaCodigoServicoMunicipal, Boolean
      attribute :usaDescricaoServico, Boolean
      attribute :usaCNAE, Boolean
      attribute :usaItemListaServico, Boolean
      attribute :helpInscricaoMunicipal, String
      attribute :helpRegimeEspecialTributacao, String
      attribute :helpCodigoServicoMunicipal, String
      attribute :helpDescricaoServico, String
      attribute :helpCNAE, String
      attribute :helpItemListaServico, String
      attribute :suportaEmissaoNFeSemCliente, Boolean
      attribute :suportaEmissaoNFeClienteSemCpf, Boolean
      attribute :suportaEmissaoNFeClienteSemEndereco, Boolean
      attribute :suportaCancelamentoNFeSemCliente, Boolean
      attribute :suportaCancelamentoNFeClienteSemCpf, Boolean
      attribute :regimesEspecialTributacao, Array
    end
  end
end
