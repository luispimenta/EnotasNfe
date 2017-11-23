module EnotasNfe
  module Model
    class Impostos

      include Virtus.model
      require "enotas_nfe/model/cofins"
      require "enotas_nfe/model/icms"
      require "enotas_nfe/model/pis"
      require "enotas_nfe/model/issqn"

      attribute :icms, Icms
      attribute :pis, Pis
      attribute :cofins, Cofins
      attribute :issqn, Issqn

    end
  end
end
