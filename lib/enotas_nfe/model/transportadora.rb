module EnotasNfe
  module Model
    class Transportadora

      include Virtus.model

      attribute :usarDadosEmitente, Boolean
      attribute :tipoPessoa, String
      attribute :CpfCnpj, String
      attribute :nome, String
      attribute :inscricaoEstadual, String
      attribute :endereco, String
      attribute :cidade, String
      attribute :uf, String
    end
  end
end
