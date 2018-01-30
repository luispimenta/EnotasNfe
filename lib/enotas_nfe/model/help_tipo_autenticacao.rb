module EnotasNfe
  module Model
    class HelpTipoAutenticacao
      include Virtus.model

      attribute :certificadoDigital, String
      attribute :usuario, String
      attribute :senha, String
      attribute :token, String
      attribute :fraseSecreta, String
    end
  end
end
