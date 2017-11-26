module EnotasNfe
  module Model
    class EmissaoNFeConsumidor

      include Virtus.model

      attribute :ambienteProducao, AmbienteProducao
      attribute :ambienteHomologacao, AmbienteHomologacao

    end
  end
end
