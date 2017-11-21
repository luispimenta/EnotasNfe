module EnotasNfe
  module Endpoints
    include Request

    def nfe_list(firm_id, body = {})
      get("empresas/#{firm_id}/nfes", body)
    end

    def nfe_create(firm_id, body)
      post("empresas/#{firm_id}/nfes", body)
    end

    def nfe_delete(firm_id, nfe_id)
      delete("empresas/#{firm_id}/nfes/#{nfe_id}")
    end

    def nfe_get(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}")
    end

    def nfe_get_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}")
    end

    def nfe_delete_by_external_id(firm_id, external_id)
      delete("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}")
    end

    def nfe_get_pdf(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}")
    end

    def nfe_get_pdf_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}/pdf")
    end

    def nfe_get_xml(firm_id, id)
      get("empresas/#{firm_id}/nfes/#{id}/xml")
    end

    def nfe_get_xml_by_external_id(firm_id, external_id)
      get("empresas/#{firm_id}/nfes/porIdExterno/#{external_id}/xml")
    end

  end
end
