module EnotasNfe
  module Model
    class Produto

      include Virtus.model
      require "enotas_nfe/model/impostos"

      attribute :descricao, String
      attribute :cfop, String
      attribute :codigo, String
      attribute :descricao, String
      attribute :ncm, String
      attribute :cest, String
      attribute :quantidade, Float
      attribute :unidadeMedida, String
      attribute :valorUnitario, Float
      attribute :descontos, Float
      attribute :impostos, Impostos
      attribute :outrasDespesas, Float
      attribute :seguro, Float

    end
  end
end
