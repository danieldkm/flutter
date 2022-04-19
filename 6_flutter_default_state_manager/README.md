# flutter_default_state_manager

## libs

- syncfusion_flutter_gauges
- currency_text_input_formatter
- intl

## setState

- builda a tela como um todo.

## Value notifier

- atualizar por reatividade.
- atualizar uma parte de um elemento.

## Change notifier

- padrão observable
- trabalha com classe externa, controller e quem o estado e ação da nossa pagina.

## Bloc pattern

- divide a regra de negocio numa classe especifica.
- utilizar o `sink`, quando tu quiser externalizar uma chamada ou mudança de estado, boa pratida recomendar não externalizar e deixar na controller.
- se tiver mais de dois ouvintes na page, adicionar o `broadcast` ex: `StreamController<ImcState>.broadcast()`