# flutter_sqlite

## Introdução e criação do projeto

```bash
flutter create --project-name=flutter_sqlite --org br.com.danielmorita --platforms android,ios -a kotlin -i swift ./flutter_sqlite
```

### Libs

- sqflite
- path

## Criando e acessando nossa base de dados

### sqlite

- version: cria uma versão para a estrutura do banco de dados, se ouver mudança, incrementar a "version"
- onCreate: sempre irá rodar uma vez, se não existir o banco de dados ou seja chamado somente no momento de criação do bd.
- onUpgrade: será chamando sempre que ouver uma alteração no version incremental (1 -> 2).
- onDowngrade: será chamado sempre que ouver uma alteração no version decremental (2 -> 1).
- onConfigure: sempre chamado, configurações do banco de dados. 

- Abrir o android studio e abrir o projeto flutter, para inspecionar o banco de dados sqlite, na parte inferior procure por `Database Inspector / App Inspector` ("Rode projeto para aparecer")

## Entendendo como atualizar e voltar versão de banco de dados

## Desabilitando auto backup de arquivos do android (**importante**)

- backup dos arquivos no android a partir de uma versão no proprio google drive.
  - remover o backup, abra o arquivo *AndroidManifest.xml*
  - adicionar dentro da tag *application* as propriedades *android:allowBackup="false"* e *android:fullBackupOnly="false"*

## Manipulando dados do Sqlite
