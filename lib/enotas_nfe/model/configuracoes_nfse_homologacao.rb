module EnotasNfe
  module Model
    class ConfiguracoesNFSeHomologacao

      include Virtus.model

      attribute :sequencialNFe, Integer
      attribute :serieNFe, String
      attribute :sequencialLoteNFe, Integer
      attribute :usuarioAcessoProvedor, String
      attribute :senhaAcessoProvedor, String
      attribute :tokenAcessoProvedor, String

    end
  end
end
