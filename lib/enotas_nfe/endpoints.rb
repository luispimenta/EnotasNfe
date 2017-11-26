module EnotasNfe
  module Endpoints
    include Request

    ## rotas para criaçacão/update e onfiguraçao da empresa
    def get_empresas(pageNumber, pageSize)
      get("empresas?pageNumber=#{pageNumber}&pageSize=#{pageNumber}")
    end

    def get_empresa(firm_id)
      get("empresas/#{firm_id}")
    end

    def create_update_empresa(body)
      post("empresas", body)
    end

    def set_logo(firm_id, body)
      post("empresas/#{firm_id}/logo", body)
    end


    ## rotas para nota fiscal eletronica
    def nfe_create(firm_id, body)
      post("empresas/#{firm_id}/nf-e", body)
    end

    def nfe_delete(firm_id, nfe_id)
      delete("empresas/#{firm_id}/nf-e/#{nfe_id}")
    end

    def nfe_get(firm_id, id)
      get("empresas/#{firm_id}/nf-e/#{id}")
    end

    ## rotas para nota fiscal de serviço
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
