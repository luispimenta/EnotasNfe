module EnotasNfe
  module Model
    class Nfe

      include Virtus.model

      attribute :id, String
      attribute :enviarPorEmail, Boolean
      attribute :ambienteEmissao, String
      attribute :naturezaOperacao, String
      attribute :consumidorFinal, Boolean
      attribute :finalidade, String
      attribute :tipo, String
      attribute :idExterno, String
      attribute :indicadorPresencaConsumidor, String
      attribute :valorTotal, Float
      attribute :idExternoSubstituir, String
      attribute :nfeIdSubstitituir, String
      attribute :informacoesAdicionais, String
      attribute :itens, Array
      attribute :servico, Servico
      attribute :cliente, Cliente
      attribute :pedido, Pedido

    end
  end
end
