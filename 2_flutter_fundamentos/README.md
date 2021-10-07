# Módulo 11 - Flutter Fundamentos

[Para saber mais](https://flutter.dev/docs/resources/faq)

## O que é Flutter
- Flutter é o kit de ferramentas de IU portátil do Google para a criação de aplicativos bonitos e compilados de forma nativa para dispositivos móveis, web e desktop a partir de uma única base de código.

## Para quem é o Flutter?

**Para Usuários**
- Para os usuários, o Flutter dá vida aos aplicativos.

**Para Desenvolvedores**
- O Flutter reduz a barreira para a construção de aplicativos multi-plataforma. (Barreira de linguagem: Android, IOS, Web, Desktop).
- Acelera o desenvolvimento de aplicativos e reduz o custo e a complexidade da produção de aplicativos em todas as plataformas.

**Para Designers**
- Para designers, o Flutter oferece a possibilidade de construção de telas de ponta com máximo de aproveitamento na experiência do usuário (UX).
- A Fast Company descreveu o Flutter como uma das melhores ideias de design da década por sua capacidade de transformar conceitos em código de produção sem os compromissos impostos por estruturas típicas. (Preso aos conceitos do Material Designer ou do Cupertino).

**Para Empresas**
- O Flutter permite a unifiação de desenvolvedores de apps em uma única equipe para dispositivos móveis, web e desktop, construindo aplicativos para várias plataformas a partir de uma única base de código.
- Flutter acelera o desenvolvimento e sincroniza cronogramas de lançamento em toda a base de clientes.

## Quant experiência de desenvolvimento eu preciso para usar o Flutter?
- Flutter é acessível a programadores familiarizados com conceitos orientados a objetos (classes, métodos, variáveis, etc) e conceitos de programação imperativos (loops, condicionais, etc).

## O que torna o Flutter único?
- Flutter é diferente da maioria das outras plataformas para construir aplicativos móveis porque não depende da tecnlogia de navegador da web nem do conjunto de componentes que vem com cada dispositivo.
- Em vez disso, o Flutter usa seu próprio mecanismo de renderização de alto desempenho para desenhar os componentes.
- Além disso, o Flutter é diferente porque possui apenas uma camada fina de código C/C++.
- O Flutter implementa a maior parte de seu sistema (composição, gestos, animação, estrutura, widgets, etc.) em Dart (uma linguagem moderna, concisa e orientada a objetos) que pode ser customizada de forma simples e fácil.
- Isso dá aos desenvolvedores um tremendo controle sobre o sistema, bem como reduz significativamente o nível de acessibilidade para a maioria do sistema.

## Com qual tecnologia o Flutter é construído?

- Flutter é constuído em C, C++, Dart e Skia (um mecanismo de renderização 2D).
## Como o Flutter executar meu código no Android?
- Os códigos C e C++ são compilados com o NDK do android.
- O código Dart (o SDK e o seu) são compilados com antecedência (AOT) em bibliotecas nativas, ARM e x86.
- Essas bibliotecas estão incluídas em um projeto Android "runner", e tudo está integrado em um .apk.
- Quando iniciado, o aplicativo carrega a biblioteca Flutter. Qualquer renderização, entrada ou manipulação de eventos e assim por diante, é delegada ao Flutter compilado e ao código do aplicativo. Isso é semelhante ao funcionamento de muitos motores de jogo.
- Durante o modo de depuração, o Flutter usa uma máquina virtual (VM) para executar seu código a fim de habilitar o hot reload, um recurso que permite fazer alterações no código em execução sem recompilação.
- Você verá um banner de "depuração" no canto superior direito do seu aplicativo ao executar neste modo, para lembrá-lo de que o desempenho não é uma característica do aplicativo finalizado.

## Como o Flutter executar meu código no IOS?
- Os códigos C e C++ do mecanismo são compilados com **LLVM**.
- O código Dart (o SDK e o seu) são compilados com antecedência (AOT) em uma biblioteca ARM nativa.
- Essa biblioteca está incluída em um projeto iOS "runner" e tudo está integrado em um **.ipa**.
- O restante é igual do android.

## Por que o Flutter escolheu usar o Dart?
- dart runtimes suporta a combinação de dois recursos críticos para Flutter:
  - Um ciclo de desenvolvimento rápido baseado em **JIT (Just in Time)** que permite a mudança e recarragamentos dinâmicos com uma linguagem com tipos, além de um compilador **AOT (Ahead-of-Time)** que emite código compilado eficiente para inicialização rápida e desempenho previsível de implantações de produção.
  - o JIT é utilizando em tempo de desenvolvimento e ja o AOT é a compilação da implementação com todas as precauções e otimização para deixar enxuto.
- Além disso, a equipe do Flutter tem a oportunidade de trabalhar em colaboração com a comunidade Dart, que está investindo ativamente em recursos para melhorar o Dart para uso no Flutter. Por exemplo, quando adotamos o dart, a linguagem não tinha uma cadeia de ferramentas avançada para a produção de binários nativos, o que é fundamental para alcançar alto desempenho previsível, mas agora a linguagem tem porque a equipe do Dart a contruiu para o Flutter.
- Da mesma forma, o Dart VM foi otimizado anteriormente para **rendimento**, mas a equipe agora está otimizando a VM para latência, o que é mais importante para a **carga** de trabalho do Flutter.

- Os pontos que fizeram ser escolhida foram:
  - Produtividade do desenvolvedor
    - O Flutter também é feito em Dart então precisa ser fácil de dar manutenção nas mais de 100k de linhas de código.
  - Orientação a objetos.
  - Previsível, alto desempenho
    - Precisa rodar em 60 quadros por segundo para ter uma experiência rápida e fluida.
  - Alocação de memória rápida
    - Aloca de forma eficiente as variáveis em memoria, pois o alocamos variáveis pequnas e tempo de vida curto.

## Qual a diferença entre o hot reload e o hot restart?

- hot reload:
  - atualiza o app quando o código é alterado e salvado.
  - Funciona injetando arquivos de código-fonte atualizados na Dart VM (Máquina Vertual) em execução. Isso não apenas adiciona novas classes, mas também adiciona métodos e campos às classes existentes e altera as funções existentes.

- hot restart:
  - redefine o estado para o estado inicial do aplicativo.