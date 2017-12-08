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
      attribute :quantidade, Integer
      attribute :unidadeMedida, String
      attribute :valorUnitario, Float
      attribute :descontos, Float
      attribute :impostos, Impostos
      attribute :outrasDespesas, Float

    end
  end
end
