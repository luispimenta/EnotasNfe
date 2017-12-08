module EnotasNfe
  module Model
    class Transporte

      include Virtus.model

      attribute :frete, Frete
      attribute :enderecoEntrega, EnderecoEntrega
      attribute :transportadora, Transportadora
      attribute :veiculo, Veiculo
      attribute :volume, Volume

    end
  end
end
