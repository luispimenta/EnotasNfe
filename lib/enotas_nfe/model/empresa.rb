module EnotasNfe
  module Model
    class Empresa

      require "enotas_nfe/model/ambiente_homologacao"
      require "enotas_nfe/model/ambiente_producao"
      require "enotas_nfe/model/configuracoes_nfse_homologacao"
      require "enotas_nfe/model/configuracoes_nfse_producao"
      require "enotas_nfe/model/emissao_nfe_consumidor"
      require "enotas_nfe/model/metadados"
      require 'open-uri'

      include Virtus.model

      attribute :id #Em casos de atualização o identificador único da empresa deve ser informado, atributo "id".
      attribute :idExterno, String
      attribute :empresaId, String
      attribute :razaoSocial, String
      attribute :nomeFantasia, String
      attribute :logotipo, Faraday::UploadIO
      attribute :cnpj, String
      attribute :email, String
      attribute :telefoneComercial, String
      attribute :enviarEmailCliente, Boolean
      attribute :endereco, Endereco
      attribute :inscricaoMunicipal, String
      attribute :inscricaoEstadual, String
      attribute :prazo, Integer
      attribute :status, String
      attribute :regimeEspecialTributacao, String
      attribute :descricaoServico, String
      attribute :codigoServicoMunicipal, String
      attribute :itemListaServicoLC116, String
      attribute :cnae, String
      attribute :aedf, String
      attribute :aliquotaIss, Float
      attribute :optanteSimplesNacional, Boolean
      attribute :incentivadorCultural, Boolean
      attribute :emissaoNFeConsumidor, EmissaoNFeConsumidor
      attribute :configuracoesNFSeHomologacao, ConfiguracoesNFSeHomologacao
      attribute :configuracoesNFSeProducao, ConfiguracoesNFSeProducao
      attribute :mei, Boolean
      attribute :metadados, Metadados
    end
  end
end
