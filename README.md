# Guardiões do Cosmos: Preservação e Conhecimento

## Sumário
1. [Introdução](#introdução)
   - [Contexto](#contexto)
   - [Objetivos](#objetivos)
   - [Justificativa](#justificativa)
2. [Descrição do Projeto](#descrição-do-projeto)
   - [Tema do Projeto](#tema-do-projeto)
   - [Problemas a Resolver](#problemas-a-resolver)
   - [Limitações](#limitações)
3. [Especificação Técnica](#especificação-técnica)
   - [Requisitos do Software](#requisitos-do-software)
     - [Requisitos Funcionais](#requisitos-funcionais)
     - [Requisitos Não Funcionais](#requisitos-não-funcionais)
   - [Considerações de Design](#considerações-de-design)
   - [Stack Tecnológica](#stack-tecnológica)
4. [Funcionalidade da Nave com IA](#funcionalidade-da-nave-com-ia)
5. [Próximos Passos](#próximos-passos)
6. [Referências](#referências)

## Introdução

**Guardiões do Cosmos** é um jogo offline, single-player e dinâmico, que combina diversão com desafios interestelares. A principal proposta do jogo é proporcionar uma experiência imersiva onde o jogador controla uma nave em um cenário gerado proceduralmente, enfrentando obstáculos e desafios criados de forma única a cada partida.

### Contexto

O jogo é ambientado no espaço profundo, onde o jogador assume o controle de uma nave com o objetivo de explorar e sobreviver contra asteroides perigosos. Utilizando geração procedural e inteligência artificial (IA), o jogo cria cenários estelares únicos a cada sessão, garantindo que cada partida seja uma experiência diferente.

### Objetivos

- Desenvolver um jogo dinâmico, focado em diversão e jogabilidade fluida.
- Implementar uma IA  para geração de cenários estelares e controle de "NPC's" de ajuda.
- Garantir uma experiência de jogo envolvente, sem necessidade de conexão com a internet.
- Criar um sistema de desafios variados e adaptáveis a cada partida.

### Justificativa

Com o avanço das tecnologias de jogos, a geração procedural e o uso de IA têm se tornado ferramentas poderosas para criar experiências únicas. Este projeto se destaca por oferecer uma experiência rica e personalizada para o jogador, sem a necessidade de sistemas online ou conectividade externa.

## Descrição do Projeto

### Tema do Projeto

**Guardiões do Cosmos** é um jogo de nave espacial que combina exploração, combate e sobrevivência em um ambiente dinâmico e proceduralmente gerado. O jogo é totalmente offline e projetado para ser acessível e divertido, utilizando IA para enriquecer a experiência.

### Problemas a Resolver

1. **Geração Procedural de Cenários:** Implementar algoritmos eficientes para criar cenários estelares únicos em cada partida.
2. **Integração de IA:** Utilizar IA para controlar naves amigas.
3. **Desempenho Offline:** Garantir fluidez e funcionalidade completa sem necessidade de conexão com a internet.
4. **Jogabilidade Rejogável:** Proporcionar uma experiência que incentive os jogadores a voltarem para superar seus próprios recordes.

### Limitações

- O jogo é exclusivamente single-player e offline.
- Suporte inicial limitado apenas para a plataforma Windows.

## Especificação Técnica

### Requisitos do Software

- **Geração Procedural:** Cenários interestelares criados de forma única a cada partida.
- **IA Dinâmica:** Controle de amigos e ambientes gerados através de algoritmos de IA.
- **Experiência Single-Player e Offline:** Jogo completo sem necessidade de internet.

#### Requisitos Funcionais

- Sistema de navegação e combate.
- Geração procedural de mapas e desafios.
- Nave controlada por IA interagindo diretamente com o jogador.

#### Requisitos Não Funcionais

- Desenvolvido em Godot, otimizado para Windows.
- Sem dependências externas ou banco de dados.
- Recursos visuais e sonoros em formatos leves e acessíveis.

### Considerações de Design

O design do jogo foi pensado para ser dinâmico e simples, focando em gráficos 2D estilizados e movimentação fluida. Os cenários são criados proceduralmente, garantindo uma experiência visual rica e variada.

### Stack Tecnológica

- **Linguagem de Programação:** GDScript.
- **Engine:** Godot, por ser open-source e oferecer suporte robusto para desenvolvimento de jogos 2D.
- **Ferramentas:** Godot Engine, Visual Studio Code e Git.

## Funcionalidade da Nave com IA

A nave controlada por IA é um dos principais diferenciais do jogo, projetada para oferecer interatividade.

### Características
- **Comportamento Adaptável:** A IA toma decisões baseadas no ambiente e nas ações do jogador.
- **Integração Procedural:** A IA é integrada aos cenários gerados, adaptando seu comportamento a cada partida.

### Implementação
- **Script Utilizado:** `iaship.gd`
- **Decisões Inteligentes:** A nave avalia proximidade de obstáculos, ataques e posição do jogador para ajustar suas ações.
- **Movimentação Dinâmica:** Comportamento fluido e imprevisível para maior interatividade.

## Próximos Passos

1. Refinar a IA da nave para comportamento mais realista e responsivo.
2. Melhorar os algoritmos de geração procedural para maior diversidade visual e estratégica.
3. Adicionar novas funcionalidades, como power-ups e desafios adicionais.

## Referências

- [Documentação oficial do Godot](https://docs.godotengine.org/en/stable/)
- [Guia sobre IA em Jogos](https://aigamedev.com/)
- [Game Programming Patterns](http://gameprogrammingpatterns.com/)
