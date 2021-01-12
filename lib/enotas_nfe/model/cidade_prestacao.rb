module EnotasNfe
  module Model
    class CidadePrestacao

      include Virtus.model

      attribute :siglaUF, String
      attribute :municipio, String
      attribute :logradouro, String
      attribute :numero, String
      attribute :bairro, String
      attribute :cep, String

    end
  end
end
