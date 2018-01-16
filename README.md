# eNotas Gateway - Ruby

GEM não OFICIAL Ruby da API do eNotas Gateway, plataforma de emissâo automática de nota fiscal eletrônica de serviço (NFS-e), Produto (NF-e) e Consumidor (NFC-e).

Esse projeto foi um fork de -> https://github.com/12min/enotas-client

A documentação completa dos endpoints pode ser encontrada aqui: [API NFS-e eNotas Gateway](http://app.enotasgw.com.br/docs),
e aqui [API NF-e eNotas Gateway](http://app.enotasgw.com.br/docs/v2/NF-e#!/nf-e/post_empresas_empresaId_nf_e).

Mais detalhes: [enotasgw.com.br](http://enotasgw.com.br)

Exemplo em PHP para nfse pode ser [encontrado aqui.](https://github.com/eNotasGW/php-client) - na biblioteca oficial.

Exemplo em PHP para nfe e nfce pode ser [encontrado aqui.](https://github.com/eNotasGW/php-client-v2) - na biblioteca oficial.

Exemplos diversos para emissão de nfe [encontrado aqui.](http://portal.enotasgw.com.br/knowledge-base/exemplos-emissao-nfe-produto-conjugada/) - na biblioteca oficial.

## Instalação

Adicione o código abaixo ao Gemfile da sua aplicação:

```ruby
gem 'enotas_nfe'
```

E execute:

    $ bundle

Ou instale manualmente:

    $ gem install enotas_nfe

## Uso básico para NFSE

* Instancie o cliente passando sua API key:

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfse')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova nota de SERVIÇO:

```ruby
nfe = EnotasNfe::Model::Nfe.new
nfe.tipo = 'NFS-e'
nfe.idExterno = '1'
nfe.ambienteEmissao = 'Homologacao'

nfe.cliente = {
  nome: 'Luis Fernando Pimenta',
  email: 'email@luispimenta.me',
  cpfCnpj: '33199707807'
}

nfe.cliente.endereco = {
  uf: 'PR',
  cidade: 'Curitiba',
  logradouro: 'Rua 01',
  numero: '112',
  bairro: 'Centro',
  cep: '80000000'
}

nfe.enviarPorEmail = true

nfe.servico = {
  descricao: 'Reparo em computador',
  aliquotaIss: 5,
  issRetidoFonte: true,
  descricaoServicoMunicipio: "Reparo em computador",
  ufPrestacaoServico: "PR",
  municipioPrestacaoServico: "Curitiba",
  valorCofins: 0,
  valorCsll: 0,
  valorInss: 0,
  valorIr: 0,
  valorPis: 0
}

nfe.valorTotal = 1.00

#enviando a nota
client.nfse_create('id-da-empresa-no-enotas', nfe)
client.nfse_delete('id-da-empresa-no-enotas', id-da-nota)
```

## Uso básico para NFE

* Instancie o cliente passando sua API key:

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfe')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova de VENDA de produto - NFe:

```ruby
nfe = EnotasNfe::Model::Nfe.new
nfe.id = '1'
nfe.ambienteEmissao = "Homologacao" # "Producao" ou "Homologacao"
nfe.naturezaOperacao = 'Venda'
nfe.finalidade = 'Normal'
nfe.consumidorFinal = true
nfe.indicadorPresencaConsumidor = true

nfe.cliente = {
  tipoPessoa: 'F',
  indicadorContribuinteICMS: "NaoContribuinte",
  nome: 'Luis Fernando Pimenta',
  email: 'email@luispimenta.me',
  cpfCnpj: '33199707807',
  telefone: '19981328642',
  inscricaoMunicipal: '',
  inscricaoEstadual: '',
}

nfe.cliente.endereco = {
  uf: 'PR',
  cidade: 'Curitiba',
  logradouro: 'Rua 01',
  numero: '112',
  bairro: 'Centro',
  cep: '80000000'
}

#se tiver frete
nfe.transporte = EnotasNfe::Model::Transporte.new
nfe.transporte.frete = {
  modalidade: "PorContaDoEmitente",
  valor: 20.00
}

nfe.enviarPorEmail = true

produto = EnotasNfe::Model::Produto.new
produto.cfop = "5101"
produto.codigo = '1'
produto.descricao = 'pneu'
produto.ncm = '38151210'
produto.unidadeMedida = 'UN'
produto.valorUnitario = 1.00
produto.impostos = EnotasNfe::Model::Impostos.new
produto.impostos.icms = EnotasNfe::Model::Icms.new
produto.impostos.icms.situacaoTributaria = '102'
produto.impostos.icms.origem = 0
produto.impostos.pis = EnotasNfe::Model::Pis.new
produto.impostos.pis.situacaoTributaria = '07'
produto.impostos.cofins = EnotasNfe::Model::Cofins.new
produto.impostos.cofins.situacaoTributaria = '07'

nfe.itens << produto

nfe.informacoesAdicionais = "I - Documento emitido por ME ou EPP optante pelo Simples Nacional.\r\n II - Não gera direito a crédito fiscal de ICMS, de ISS e de IPI." #opcional

#enviando a nota
client.nfe_create('id-da-empresa-no-enotas', nfe)

#cancelando uma nota
client.nfe_delete('id-da-empresa-no-enotas', id-da-nota)
```

## Uso básico para devolução de uma NFE

* Instancie o cliente passando sua API key:

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfe')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova de Devolução de produto - NFe:

```ruby
nfe = EnotasNfe::Model::Nfe.new
nfe.id = '1'
nfe.ambienteEmissao = "Homologacao" # "Producao" ou "Homologacao"
nfe.naturezaOperacao = "Devolução"
nfe.tipoOperacao =  "Entrada"
nfe.nfeReferenciada = [{
    "chaveAcesso": "000121111999005183450010000028881000025656"
}]
nfe.finalidade = "DevolucaoMercadoria"
nfe.consumidorFinal = true
nfe.indicadorPresencaConsumidor = true

nfe.cliente = {
  tipoPessoa: 'F',
  indicadorContribuinteICMS: "NaoContribuinte",
  nome: 'Luis Fernando Pimenta',
  email: 'email@luispimenta.me',
  cpfCnpj: '33199707807',
  telefone: '19981328642',
  inscricaoMunicipal: '',
  inscricaoEstadual: '',
}

nfe.cliente.endereco = {
  uf: 'PR',
  cidade: 'Curitiba',
  logradouro: 'Rua 01',
  numero: '112',
  bairro: 'Centro',
  cep: '80000000'
}

#se tiver frete
nfe.transporte = EnotasNfe::Model::Transporte.new
nfe.transporte.frete = {
  modalidade: "PorContaDoEmitente",
  valor: 20.00
}

nfe.enviarPorEmail = true

produto = EnotasNfe::Model::Produto.new
produto.cfop = "5101"
produto.codigo = '1'
produto.descricao = 'pneu'
produto.ncm = '38151210'
produto.unidadeMedida = 'UN'
produto.valorUnitario = 1.00
produto.impostos = EnotasNfe::Model::Impostos.new
produto.impostos.icms = EnotasNfe::Model::Icms.new
produto.impostos.icms.situacaoTributaria = '102'
produto.impostos.icms.origem = 0
produto.impostos.pis = EnotasNfe::Model::Pis.new
produto.impostos.pis.situacaoTributaria = '07'
produto.impostos.cofins = EnotasNfe::Model::Cofins.new
produto.impostos.cofins.situacaoTributaria = '07'

nfe.itens << produto

nfe.informacoesAdicionais = "I - Documento emitido por ME ou EPP optante pelo Simples Nacional.\r\n II - Não gera direito a crédito fiscal de ICMS, de ISS e de IPI." #opcional

#enviando a nota
client.nfe_create('id-da-empresa-no-enotas', nfe)
```

## Uso básico para NFCE

* Para emitir uma NFCE você precisa definir o ID E O CSC em produção, que também servirá para homologação

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfe')
empresa = EnotasNfe::Model::Empresa.new(client.get_empresa('id-da-empresa-no-enotas'))
empresa.emissaoNFeConsumidor.ambienteProducao = EnotasNfe::Model::AmbienteProducao.new
empresa.emissaoNFeConsumidor.ambienteProducao.serieNFe = "2"
empresa.emissaoNFeConsumidor.ambienteProducao.sequencialNFe = "7"
empresa.emissaoNFeConsumidor.ambienteProducao.csc = EnotasNfe::Model::Csc.new
empresa.emissaoNFeConsumidor.ambienteProducao.csc.id = '000001'
empresa.emissaoNFeConsumidor.ambienteProducao.csc.codigo = '800FA97D5C3F4219A89DCE3FCE813A6F'
client.create_update_empresa(empresa)
```

* Instancie o cliente passando sua API key:

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfe')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova de VENDA de produto - NFCe:

```ruby
nfe = EnotasNfe::Model::Nfe.new

nfe.id = '1000'
nfe.ambienteEmissao = 'Homologacao'

nfe.pedido = {
  "presencaConsumidor": "OperacaoPresencial"
}

nfe.pedido.pagamento = {
  "tipo": "PagamentoAVista"
}

nfe.pedido.pagamento.formas = [
  {
    "tipo": "Dinheiro",
    "valor": 10.00
  }
]

nfe.enviarPorEmail = true

produto = EnotasNfe::Model::Produto.new
produto.cfop = "5101"
produto.codigo = "1"
produto.descricao = "pneu"
produto.ncm = "38151210"
produto.unidadeMedida = "UN"
produto.valorUnitario = 10.00

produto.impostos = EnotasNfe::Model::Impostos.new
produto.impostos.icms = EnotasNfe::Model::Icms.new
produto.impostos.icms.situacaoTributaria = "102"
produto.impostos.icms.origem = 0

nfe.itens << produto

#criar uma nfce
client.nfce_create('id-da-empresa-no-enotas', nfe)
#cancelando uma nota
client.nfce_delete('id-da-empresa-no-enotas', id-da-nota)
```

## Uso básico para NOTA CONJUGADA

* Instancie o cliente passando sua API key:

```ruby
client = EnotasNfe::Client.new('sua-api-key-do-e-notas', 'nfe')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova conjugada

```ruby
nfe = EnotasNfe::Model::Nfe.new
nfe.id = "1"
# "Producao" ou "Homologacao"
nfe.ambienteEmissao = "Homologacao"
nfe.naturezaOperacao = "Venda"
nfe.finalidade = "Normal"
nfe.consumidorFinal = true
nfe.indicadorPresencaConsumidor = true
nfe.cliente = {
  tipoPessoa: "F",
  indicadorContribuinteICMS: "NaoContribuinte",
  nome: "Luis Fernando Pimenta",
  email: "email@luispimenta.me",
  cpfCnpj: "33199707807",
  telefone: "19981328642",
  inscricaoMunicipal: "",
  inscricaoEstadual: "",
}
nfe.cliente.endereco = {
  uf: "PR",
  cidade: "Curitiba",
  logradouro: "Rua 01",
  numero: "112",
  bairro: "Centro",
  cep: "80000000"
}
nfe.enviarPorEmail = true
produto = EnotasNfe::Model::Produto.new
produto.cfop = "5101"
produto.codigo = "1"
produto.descricao = "pneu"
produto.ncm = "38151210"
produto.unidadeMedida = "UN"
produto.valorUnitario = 1.00
produto.impostos = EnotasNfe::Model::Impostos.new
produto.impostos.icms = EnotasNfe::Model::Icms.new
produto.impostos.icms.situacaoTributaria = "102"
produto.impostos.icms.origem = 0
produto.impostos.pis = EnotasNfe::Model::Pis.new
produto.impostos.pis.situacaoTributaria = "07"
produto.impostos.cofins = EnotasNfe::Model::Cofins.new
produto.impostos.cofins.situacaoTributaria = "07"
nfe.itens << produto

produto = EnotasNfe::Model::Produto.new
#OBS: Deve ser utilizado o CFOP 6933 quando for serviço realizado fora do estado.
produto.cfop = "5933"
produto.codigo = "S001"
produto.descricao = "Serviço de Troca de Disco de Freio (dianteiro ou traseiro)"
produto.ncm = "00"
produto.unidadeMedida = "UN"
produto.valorUnitario = 1.00
produto.impostos = EnotasNfe::Model::Impostos.new
produto.impostos.pis = EnotasNfe::Model::Pis.new
produto.impostos.pis.situacaoTributaria = "07"
produto.impostos.cofins = EnotasNfe::Model::Cofins.new
produto.impostos.cofins.situacaoTributaria = "07"
nfe.itens << produto

nfe.valorTotal = 2.00

#criar uma nfce
client.nfe_create('id-da-empresa-no-enotas', nfe)
#cancelando uma nota
client.nfe_delete('id-da-empresa-no-enotas', id-da-nota)
```

## Testando a gem localmente

```ruby
gem build enotas_nfe.gemspec
gem install enotas-nfe-0.0.1.gem
abra o irb
require 'enotas_nfe'
e siga os passos acima
```

## Contribuindo

Para contruibuir de uma forma adequada, siga os passos abaixo:

* Faça um fork do projeto;
* Após clonar seu fork, crie um novo branch com a feature que deseja implementar;
* Envie seu branch para seu repositório remoto;
* Solicite um PR a partir desse novo branch enviado.

Issues e comentários são sempre bem-vindos no repoistório oficial: https://github.com/eNotasGW/.

## ROADMAP

Quer contribuir e não sabe por onde começar? Veja nosso ROADMAP:

* Escrever testes;
* Finalizar chamada para troca de logotipo da empresa

## License

Esta gem está disponível através da [licença MIT](http://opensource.org/licenses/MIT).
