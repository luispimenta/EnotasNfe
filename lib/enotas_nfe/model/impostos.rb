module EnotasNfe
  module Model
    class Impostos

      include Virtus.model
      require "enotas_nfe/model/cofins"
      require "enotas_nfe/model/icms"
      require "enotas_nfe/model/pis"

      attribute :icms, Icms
      attribute :pis, Pis
      attribute :cofins, Cofins

    end
  end
end
