# eNotas Gateway - Ruby

Wrapper não OFICIAL Ruby da API do eNotas Gateway, plataforma de emissâo automática de nota fiscal eletrônica de serviço (NFS-e), Produto (NF-e) e Consumidor (NFC-e).

A documentação completa dos endpoints pode ser encontrada aqui: [API eNotas Gateway](http://app.enotasgw.com.br/docs).

Mais detalhes: [enotasgw.com.br](http://enotasgw.com.br)

Exemplo em PHP pode ser [encontrado aqui.](https://github.com/eNotasGW) - na biblioteca oficial.

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
client = Enotas::Client.new('sua-api-key-do-e-notas')
```

Agora já podemos emitir uma nota!

* Emitindo uma nova nota de SERVIÇO:

```ruby
nfe = Enotas::Model::Nfe.new
nfe.tipo = 'NFS-e' 
nfe.idExterno = '42'
nfe.cliente = {
  name: 'Luis Fernando Pimenta',
  email: 'email@luispimenta.me',
  cpfCnpj: '33199707807'
}
nfe.enviarPorEmail = true
nfe.cliente.endereco = {
  uf: 'PR',
  cidade: 'Curitiba',
  logradouro: 'Rua 01',
  numero: '112',
  bairro: 'Centro',
  cep: '80000000'
}

nfe.servico = {
  descricao: 'Reparo em computador',
  aliquotaIss: 0,
  issRetidoFonte: true,
  cnae: "4520001",
  codigoServicoMunicipio: "666133",
  descricaoServicoMunicipio: "Reparo em computador",
  itemListaServicoLC116: "1000",
  ufPrestacaoServico: "PR",
  municipioPrestacaoServico: "Curitiba",
  valorCofins: 0,
  valorCsll: 0,
  valorInss: 0,
  valorIr: 0,
  valorPis: 0
}

nfe.nfe_create('id-da-empresa-no-enotas', nfe)
```

* Emitindo uma nova nota NFe:

## Testando a gem localmente

```ruby
gem build enotas_nfe.gemspec
gem install enotas-nfe-0.0.1.gem
irb
require 'enotas_nfe'
```

## Contribuindo

Para contruibuir de uma forma adequada, siga os passos abaixo:

* Faça um fork do projeto;
* Após clonar seu fork, crie um novo branch com a feature que deseja implementar;
* Envie seu branch para seu repositório remoto;
* Solicite um PR a partir desse novo branch enviado.

Issues e comentários são sempre bem-vindos no repoistório oficial: https://github.com/enotas/enotas-ruby.

## ROADMAP

Quer contribuir e não sabe por onde começar? Veja nosso ROADMAP:

* Escrever testes;
* Normalizar campos dos models para o padrão ruby;
* Cobrir os endpoints referentes ao resource "empresa".

## License

Esta gem está disponível através da [licença MIT](http://opensource.org/licenses/MIT).
