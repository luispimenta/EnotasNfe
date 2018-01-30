module EnotasNfe
  module Model
    class RegimesEspecialTributacao
      include Virtus.model

      attribute :codigo, String
      attribute :nome, String
    end
  end
end
