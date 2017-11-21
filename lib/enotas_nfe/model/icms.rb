module EnotasNfe
  module Model
    class Icms

      include Virtus.model

      attribute :situacaoTributaria, String
      attribute :origem, String

    end
  end
end
