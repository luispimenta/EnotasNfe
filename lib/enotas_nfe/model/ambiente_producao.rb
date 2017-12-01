module EnotasNfe
  module Model
    class AmbienteProducao

      require "enotas_nfe/model/csc"

      include Virtus.model
      
      attribute :csc, Csc
      attribute :serieNFe, String
      attribute :sequencialNFe, Integer
    end
  end
end
