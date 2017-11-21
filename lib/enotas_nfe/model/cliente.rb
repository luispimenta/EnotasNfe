module EnotasNfe
  module Model
    class Cliente

      include Virtus.model

      attribute :tipoPessoa, String
      attribute :nome, String
      attribute :email, String
      attribute :cpfCnpj, String
      attribute :inscricaoMunicipal, String
      attribute :inscricaoEstadual, String
      attribute :indicadorContribuinte_icms, String
      attribute :telefone, String

      attribute :endereco, Endereco

    end
  end
end
