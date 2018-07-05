module EnotasNfe
  module Model
    class Nfe

      include Virtus.model

      attribute :id, String
      attribute :numero, Integer
      attribute :serie, String
      attribute :enviarPorEmail, Boolean
      attribute :ambienteEmissao, String
      attribute :dataCompetencia, String
      attribute :dataEmissao, String
      attribute :naturezaOperacao, String
      attribute :consumidorFinal, Boolean
      attribute :finalidade, String
      attribute :tipo, String
      attribute :idExterno, String
      attribute :indicadorPresencaConsumidor, String
      attribute :indicadorFormaPagamento, String
      attribute :valorTotal, Float
      attribute :idExternoSubstituir, String
      attribute :nfeIdSubstitituir, String
      attribute :informacoesAdicionais, String
      attribute :itens, Array
      attribute :servico, Servico
      attribute :cliente, Cliente
      attribute :pedido, Pedido
      attribute :tipoOperacao, String
      attribute :nfeReferenciada, Array
      attribute :transporte, Transporte
      attribute :observacoes, String

    end
  end
end
