module EnotasNfe
  module Model
    class Pis

      include Virtus.model
      require "enotas_nfe/model/valor_imposto"

      attribute :situacaoTributaria, String
      attribute :porValor, ValorImposto
      attribute :porAliquota, ValorImposto

    end
  end
end
