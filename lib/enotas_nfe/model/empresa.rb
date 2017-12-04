module EnotasNfe
  module Model
    class Empresa

      require "enotas_nfe/model/ambiente_homologacao"
      require "enotas_nfe/model/ambiente_producao"
      require "enotas_nfe/model/configuracoes_nfse_homologacao"
      require "enotas_nfe/model/configuracoes_nfse_producao"
      require "enotas_nfe/model/emissao_nfe_consumidor"
      require 'open-uri'

      include Virtus.model

      attribute :id #Em casos de atualização o identificador único da empresa deve ser informado, atributo "id".
      attribute :empresaId, String
      attribute :logotipo, String
      attribute :cnpj, String
      attribute :inscricaoMunicipal, String
      attribute :razaoSocial, String
      attribute :nomeFantasia, String
      attribute :optanteSimplesNacional, Boolean
      attribute :email, String
      attribute :telefoneComercial, String
      attribute :endereco, Endereco
      attribute :enviarEmailCliente, Boolean
      attribute :emissaoNFeConsumidor, EmissaoNFeConsumidor
      attribute :configuracoesNFSeHomologacao, ConfiguracoesNFSeHomologacao
      attribute :configuracoesNFSeProducao, ConfiguracoesNFSeProducao
      attribute :incentivadorCultural, Boolean
     
    end
  end
end
