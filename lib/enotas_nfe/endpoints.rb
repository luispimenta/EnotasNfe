module EnotasNfe
  module Endpoints
    include Request

    def nfe_create(firm_id, body)
      post("empresas/#{firm_id}/nf-e", body)
    end

    def nfe_delete(firm_id, nfe_id)
      delete("empresas/#{firm_id}/nf-e/#{nfe_id}")
    end

    def nfe_get(firm_id, id)
      get("empresas/#{firm_id}/nf-e/#{id}")
    end

    def nfse_list(firm_id, body = {})
      get("empresas/#{firm_id}/nfes", body)
    end

    def nfse_create(firm_id, body)
      post("empresas/#{firm_id}/nfes", body)
    end

    def nfse_delete(firm_id, nfe_id)
      delete("empresas/#{firm_id}/nfes/#{nfe_id}")
    end

    def nfse_get(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}")
    end

    def nfse_get_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}")
    end

    def nfse_delete_by_external_id(firm_id, external_id)
      delete("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}")
    end

    def nfse_get_pdf(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}")
    end

    def nfse_get_pdf_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}/pdf")
    end

    def nfse_get_xml(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}/xml")
    end

    def nfse_get_xml_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}/xml")
    end

  end
end
