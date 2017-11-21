module EnotasNfe
  module Facades

    def build_nfe(attributes = {})
      Model::Nfe.new(attributes)
    end

  end
end
