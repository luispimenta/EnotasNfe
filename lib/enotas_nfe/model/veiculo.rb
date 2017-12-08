module EnotasNfe
  module Model
    class Veiculo

      include Virtus.model

      attribute :placa, String
      attribute :uf, String
      attribute :rntc, String
      
    end
  end
end
