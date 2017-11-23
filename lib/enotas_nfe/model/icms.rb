module EnotasNfe
  module Model
    class Icms

      include Virtus.model

      attribute :situacaoTributaria, String
      attribute :origem, String
      attribute :aliquota, Float
      attribute :baseCalculo, Float
      attribute :modalidadeBaseCalculo, String
      attribute :percentualReducaoBaseCalculo, Float
      attribute :baseCalculoST, Float
      attribute :aliquotaST, Float
      attribute :modalidadeBaseCalculoST, String
      attribute :percentualReducaoBaseCalculoST, Float
      attribute :percentualMargemValorAdicionadoST, Float

    end
  end
end
