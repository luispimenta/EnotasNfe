module EnotasNfe
  module Model
    class CertificadoDigital
      include Virtus.model

      attribute :empresaId, String
      attribute :arquivo, Faraday::UploadIO
      attribute :senha, String
    end
  end
end
