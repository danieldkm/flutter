# flutter_provider

## Libs

- provider

## Provider compartilhando objetos simples

- read: **context.read**, vai retornar uma instancia sem ficar escutando alterações.

## Gerenciando estado com Provider

- consumer: consegue houver o controller e todos que estiver ouvindo irá alterar.
- selector: so altera quem estiver ouvindo uma variavel especifica.
  - shouldRebuild: para controller se deseja ou não rebuildar o widget.