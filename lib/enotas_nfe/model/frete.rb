module EnotasNfe
  module Model
    class Frete

      include Virtus.model

      attribute :modalidade, String
      attribute :valor, Float
      
    end
  end
end
