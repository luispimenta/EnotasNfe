module EnotasNfe
  module Model
    class ConfiguracoesNFSeProducao

      include Virtus.model

      attribute :sequencialNFe, Integer
      attribute :serieNFe, String
      attribute :sequencialLoteNFe, Integer
      attribute :usuarioAcessoProvedor, String
      attribute :tokenAcessoProvedor, String

    end
  end
end
