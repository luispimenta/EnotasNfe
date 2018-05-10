module EnotasNfe
  module Model
    class Cide

      include Virtus.model
     
      attribute :quantidadeBaseCalculo, Float
      attribute :valorAliquota, Float
      attribute :valor, Float
    end
  end
end
