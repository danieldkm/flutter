# Módulo 12 - Flutter mão na massa

```bash
flutter create --project-name=flutter_primeiro_projeto --org br.com.danielmorita --platforms android,ios -a kotlin -i swift ./flutter_primeiro_projeto
```

## PopupMenuButton

## Rows e Columns

## MediaQuery

## Device Preview Package

- ajudar a testar em varios dispositivos.
  - device_preview
- kReleaseMode: constante que diz se esta em prod.

## LayoutBuilder

- sempre herda o tamanho do pai

## Botões e Rotação de Texto

- TextButton: botao de texto.
- IconButton: com icone.
- ElevatedButton
- ElevatedButton.icon
- InkWell: quanto nao quer ter nenhum espaços, ocupando o minimo.
- Container criando do um botao customizado.

## SingleChildScrollView e ListView

- trabalhando com scroll.
- ListView utilizar esse widget sempre que a lista é muito grande.

## Dialogs

## Identificando a plataforma e mostrando o componente correto

- Utilizar componentes especificos da plataforma.

## BuildContext

- Precisa passar o buildContext para registrar na arvore de componentes, para poder ser acessado.
- Serve para encontrar uma classe
- Tem apenas conhecimento do pai, não conhece o irmão ou abaixo dele.

## Snackbar (Mensagens para o usuário)
