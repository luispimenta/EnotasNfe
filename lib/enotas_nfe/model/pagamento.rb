module EnotasNfe
  module Model
    class Pagamento

      include Virtus.model

      attribute :tipo, String
      attribute :formas, Array
      
    end
  end
end
