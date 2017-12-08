module EnotasNfe
  module Model
    class EnderecoEntrega

      include Virtus.model

      attribute :tipoPessoaDestinatario, String
      attribute :cpfCnpjDestinatario, String
      attribute :pais, String
      attribute :uf, String
      attribute :cidade, String
      attribute :logradouro, String
      attribute :numero, String
      attribute :complemento, String
      attribute :bairro, String
      attribute :cep, String

    end
  end
end
