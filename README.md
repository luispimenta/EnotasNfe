# eNotas Gateway - Ruby

Wrapper não OFICIAL Ruby da API do eNotas Gateway, plataforma de emissâo automática de nota fiscal eletrônica de serviço (NFS-e), Produto (NF-e) e Consumidor (NFC-e).

Esse projeto foi um fork de -> https://github.com/12min/enotas-client

A documentação completa dos endpoints pode ser encontrada aqui: [API NFS-e eNotas Gateway](http://app.enotasgw.com.br/docs),
e aqui [API NF-e eNotas Gateway](http://app.enotasgw.com.br/docs/v2/NF-e#!/nf-e/post_empresas_empresaId_nf_e).

Mais detalhes: [enotasgw.com.br](http://enotasgw.com.br)

Exemplo em PHP para nfse pode ser [encontrado aqui.](https://github.com/eNotasGW/php-client) - na biblioteca oficial.

Exemplo em PHP para nfe e nfce pode ser [encontrado aqui.](https://github.com/eNotasGW/php-client-v2) - na biblioteca oficial.

## Instalação

Adicione o código abaixo ao Gemfile da sua aplicação:

```ruby
gem 'enotas-nfe'
```

E execute:

    $ bundle

Ou instale manualmente:

    $ gem install enotas-nfe

## Uso básico

* Instancie o cliente passando sua API key:

```ruby
client = Enotas::Client.new('sua-api-key-do-e-notas', 'nfse')
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
nfe.nfse_create('id-da-empresa-no-enotas', nfe)

```

* Instancie o cliente passando sua API key:

```ruby
client = Enotas::Client.new('sua-api-key-do-e-notas', 'nfe')
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
* Normalizar campos dos models para o padrão ruby;
* Cobrir os endpoints referentes ao resource "empresa".

## License

Esta gem está disponível através da [licença MIT](http://opensource.org/licenses/MIT).
