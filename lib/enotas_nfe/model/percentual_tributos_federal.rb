module EnotasNfe
  module Model
    class PercentualTributosFederal

      include Virtus.model

      attribute :PercentualTotalFederal, Integer
      attribute :PercentualTotalEstadual, Integer
      attribute :PercentualTotalMunicipal, Integer
    end
  end
end
  