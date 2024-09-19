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
   - [Considerações de Segurança](#considerações-de-segurança)
4. [Próximos Passos](#próximos-passos)
5. [Referências](#referências)

## Introdução

Atualmente, a internet desempenha um papel fundamental na educação de crianças e jovens, proporcionando novas formas de aprendizado por meio de métodos mais interativos e dinâmicos. Neste contexto, foi desenvolvido o jogo **Guardiões do Cosmos**, um jogo educacional que promove a aprendizagem sobre o sistema solar, estimulando a coordenação motora, agilidade, sociabilidade e a competição saudável.

### Contexto

O jogo é ambientado no espaço, onde jogadores assumem o papel de pilotos de naves espaciais que integram uma coalizão intergaláctica dedicada à preservação do espaço e disseminação do conhecimento astronômico. O ambiente do jogo é gerado proceduralmente, garantindo uma experiência única a cada partida.

### Objetivos

- Desenvolver um jogo de nave espacial envolvente que ensina sobre o sistema solar.
- Implementar uma IA para geração procedural de sistemas estelares e desafios únicos.
- Utilizar a engine Godot para criar uma experiência imersiva e acessível.
- Garantir jogabilidade de qualidade por meio de testes extensivos.

### Justificativa

Este projeto busca inovar ao utilizar IA para gerar conteúdos únicos e desafiadores, combinando isso com uma arquitetura flexível e modular que permitirá fácil expansão do jogo.

## Descrição do Projeto

### Tema do Projeto

**Guardiões do Cosmos** é um jogo de nave espacial focado na disseminação do conhecimento astronômico. O jogo utilizará IA para criar cenários dinâmicos e únicos em cada sessão, oferecendo uma experiência de jogo sempre nova e envolvente.

### Problemas a Resolver

1. **Geração Procedural de Conteúdo**: Desenvolver algoritmos eficientes para a criação de cenários únicos.
2. **Integração de IA**: Implementar IA para gerar desafios adaptáveis.
3. **Gerenciamento de Recursos**: Otimizar o jogo para garantir fluidez mesmo em hardware limitado.
4. **Documentação de Desenvolvimento**: Produzir documentação acessível para a comunidade de desenvolvedores.

### Limitações

- A complexidade da IA será limitada ao escopo inicial do projeto.
- A variedade de conteúdo gerado pode apresentar padrões reconhecíveis devido às limitações de tempo e recursos.
- O projeto será otimizado apenas para a plataforma Windows.

## Especificação Técnica

### Requisitos do Software

- **Exploração Espacial**: Os jogadores enfrentam asteroides que ameaçam o espaço.
- **Inovação com IA**: IA para geração procedural de sistemas estelares e desafios únicos.
- **Desenvolvimento na Engine Godot**: Utilização da Godot como engine de desenvolvimento.

#### Requisitos Funcionais

- Menu com opções de "Start" e "Exit".
- Exibição de informações educacionais durante o jogo.
- Pontuação aumenta ao destruir asteroides.

#### Requisitos Não Funcionais

- Desenvolvido em Godot, compatível apenas com Windows.
- Sem banco de dados.
- Imagens em formato PNG/JPG e sons em WAV.

### Considerações de Design

O design do jogo foi planejado com estilo gráfico 2D e arte cartoon, tornando-o atraente e acessível para crianças. A arquitetura segue o padrão MVC, facilitando a manutenção e escalabilidade.

### Stack Tecnológica

- **Linguagem de Programação**: GDScript, por sua integração com a Godot.
- **Engine**: Godot, uma plataforma open-source e multiplataforma.
- **Ferramentas**: Godot Engine, Visual Studio Code e Git.

### Considerações de Segurança

O jogo não possui sistema de autenticação ou banco de dados, visto que o foco inicial é oferecer uma experiência aberta ao público. Em futuras versões, pretende-se implementar protocolos de segurança.

## Próximos Passos

1. **Portfólio I**: Desenvolvimento do protótipo inicial com foco na navegação básica e IA.
2. **Portfólio II**: Expansão das funcionalidades, novos cenários gerados proceduralmente e testes extensivos.

## Referências

- [Documentação oficial do Godot](https://docs.godotengine.org/en/stable/)
- [Wiki sobre Geração Procedural de Conteúdo](https://pcg.wikidot.com/)
- [Game Development Stack Exchange](https://gamedev.stackexchange.com/)
