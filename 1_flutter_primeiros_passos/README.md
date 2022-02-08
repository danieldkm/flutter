# Módulo 10 - Flutter primeiros passos

## Criando emulador android
## Criando seu primeiro projeto pela linha de comando e abrindo no Android Studio e VsCode
```bash

#flutter create --project-name=flutter_primeiros_passos --org br.com.danielmorita --platforms web,ios,android,mac,windows,etc
# -a => java ou kotlin
# -i => Objectve-C ou swift
flutter create --project-name=flutter_primeiros_passos --org br.com.danielmorita --platforms android,ios -a kotlin -i swift ./flutter_primeiros_passos
```

## Criando seu primeiro projeto pelo Android Studio

<img src="img.png"/>
<img src="img1.png"/>

## Criando seu primeiro projeto no Visual Studio Code

Dê preferência para a linha de comando, mas segue configuração.


1. Adicionar o nome da organização na config do VS Code

Arquivo -> Preferências -> Configurações

em seguida digite na busca por `flutter create`

e procure por essa config na imagem abaixo.

<img src="img4.png"/>
Exemplo
<img src="img3.png"/>


2.


View (Ver) -> Command Palette (Paleta de Comandos)

ou

```
Ctrl + Shift + p
```

e digite flutter new project.

<img src="img2.png"/>


## Iniciando o emulador do IOS (Iphone) e Rodando o seu projeto nele

1. Verificar se existe o xcode, caso não tenha deve instalar. 
  
    a. Abra a `App Store` e procure pelo `Xcode`

2. Abrar o VS Code e inicie o emular clicando em `No Device`.

3. Para abrir o projeto, basta clicar com o botão direito na pasta `ios` e selecionar `Open in Xcode` ou abrir o arquivo Runner.xcworkspace `open ios/Runner.xcworkspace`

## Preparando e rodando seu aplicativo no Aparelho Físico Android

- Programa para emular o dispositivo fisico no pc com `Wormhole`

1. Vá em `Configurações` -> `Sobre o telefone` -> `Informações do software` -> `Número de compilação`.
2. clique várias vezes no `Número de compilação` para ativar o modo desenvolvedor, irá aparecer uma mensagem.
3. Vá em `Configurações` -> `Opções do desenvolvedor`
4. Habilitar a opção `Permanecer ativo`.
5. Habilitar a opção `Depuração USB`.

## Sobre o version no pubspec

- o numero "+1" significa o numero do build, isso que dizer que nunca decremente, sempre incrementa, mesmo que a versao seja 1.0.1 ou 1.0.2.

## Entendendo os canais (channels Stable, Beta, Master) do Flutter

- 4 tipos de canais
  - master: ambiente de desenvolvimento do time flutter.
  - dev: não irá existir a partir da versão 2.8 (ignorar).
  - beta: são features que irá entrar na próxima versão.
  - stable: versão de lançamento, estavel para todos.

- sempre tentar trabalhar na stable.

### atualizar o flutter

```bash
flutter upgrade

## mudando de canal
flutter channel 'beta'
```


## Entendendo como atualizar o Flutter e seu projeto
no pubspec encontraremos as info abaixo;

environment:
  sdk: ">=2.12.0 <3.0.0"

este é a versão do dart, digite flutter --version para identificar a versão atual do dart.


## Entendendo como fazer debug de uma aplicação Flutter

### VS Code

- Menu -> Run and Debug -> Create a launch.json file -> Dart & Flutter.

```json
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "1_flutter_primeiros_passos",
      "request": "launch",
      "type": "dart"
    },
    {
      "name": "1_flutter_primeiros_passos (profile mode)",
      "request": "launch",
      "type": "dart",
      "flutterMode": "profile"
    },
    {
      "name": "1_flutter_primeiros_passos (release mode)",
      "request": "launch",
      "type": "dart",
      "flutterMode": "release"
    }
  ]
}
```