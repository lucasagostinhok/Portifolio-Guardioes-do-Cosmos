# **Guardiões do Cosmos: Preservação e Conhecimento**

Um jogo educacional e dinâmico, projetado para promover a coordenação motora, agilidade e raciocínio rápido, com uma nave controlada por Inteligência Artificial para enriquecer a experiência do jogador.

---

## **Índice**

1. [Introdução](#introdução)
   - [Contexto](#contexto)
   - [Objetivos](#objetivos)
   - [Justificativa](#justificativa)
2. [Descrição do Projeto](#descrição-do-projeto)
   - [Tema](#tema)
   - [Problemas a Resolver](#problemas-a-resolver)
   - [Limitações](#limitações)
3. [Especificação Técnica](#especificação-técnica)
   - [Requisitos Funcionais](#requisitos-funcionais)
   - [Requisitos Não Funcionais](#requisitos-não-funcionais)
4. [Nave Controlada por IA](#nave-controlada-por-ia)
5. [Considerações de Design](#considerações-de-design)
6. [Stack Tecnológica](#stack-tecnológica)
7. [Considerações de Segurança](#considerações-de-segurança)
8. [Diagrama de Classes](#diagrama-de-classes)
9. [Próximos Passos](#próximos-passos)

---

## **Introdução**

### **Contexto**

**Guardiões do Cosmos** é um jogo ambientado no espaço, no qual o jogador assume o papel de um piloto intergaláctico encarregado de preservar ecossistemas espaciais, destruindo asteroides. O jogo utiliza inteligência artificial (IA) para gerar cenários dinâmicos e adaptar a experiência a cada partida.
**Nota:** O jogo foi projetado para ser totalmente offline, permitindo que os jogadores desfrutem da experiência sem a necessidade de conexão com a internet.

### **Objetivos**

- Desenvolver um jogo educacional interativo, que une aprendizado e diversão.
- Implementar IA para controle de naves aliadas e geração procedural de desafios únicos.
- Promover a exploração espacial enquanto dissemina conhecimento astronômico.

### **Justificativa**

Com a crescente relevância de tecnologias como a IA e geração procedural, o projeto demonstra como esses avanços podem ser aplicados para criar experiências de aprendizado personalizadas e envolventes. Além disso, a interação com uma nave controlada por IA oferece ao jogador suporte estratégico durante a partida.

---

## **Descrição do Projeto**

### **Tema**

O jogo é centrado na preservação de ecossistemas intergalácticos. Com sistemas estelares criados proceduralmente, o jogador enfrentará asteroides que ameaçam planetas habitados. A nave controlada por IA complementa a jogabilidade, fornecendo suporte inteligente e dinâmico.
O jogo é completamente offline, permitindo uma experiência independente de conectividade, ideal para todos os ambientes.


### **Problemas a Resolver**

1. **Geração Procedural:** Criação de cenários únicos e adaptáveis.
2. **IA Inteligente:** Nave aliada que interage com o jogador e o ambiente.
3. **Desempenho:** Otimizar o uso de recursos para garantir fluidez no gameplay.

### **Limitações**

- Compatível apenas com a plataforma Windows.
- Sem suporte a multiplayer no momento.

---

## **Especificação Técnica**

### **Requisitos Funcionais**

- Menu inicial com opções "Start" e "Exit".
- Sistema de combate com laser que destrói asteroides.
- Sistema de pontuação baseado em destruição de asteroides.
- O software não deve ter limite de pontuação.
- O software deve fazer uma contagem de 3 segundos antes de iniciar o jogo.
- O software deve conter som no início do jogo, no disparo do armamento e na explosão dos asteroides

### **Requisitos Não Funcionais**

- O jogo deve funcionar completamente offline, sem necessidade de conexão à internet para sua execução.
- Desenvolvido na engine **Godot**.
- Som no formato WAV para efeitos de disparo, explosões e início do jogo.
- Compatível apenas com PC (Windows).

---

## **Nave Controlada por IA**

### **Descrição**
A nave aliada é um componente central do jogo. Controlada por um sistema de IA, ela fornece suporte estratégico ao jogador, interagindo com o ambiente e reagindo às ameaças.

### **Funcionalidades**
- **Movimentação Dinâmica:** A nave segue trajetórias inteligentes para evitar colisões.
- **Combate Automatizado:** Dispara contra asteroides em áreas críticas.
- **Cooperação com o Jogador:** Adapta suas ações imitando o comportamento do jogador.

### **Implementação**
A nave foi implementada utilizando scripts na linguagem **GDScript**, nativa da engine Godot. O sistema de IA foi projetado para calcular riscos e oportunidades em tempo real.

---

## **Considerações de Design**

- **Estilo Visual:** Gráficos 2D com arte em estilo cartoon.
- **Arquitetura:** Padrão MVC (Model-View-Controller) para facilitar manutenção e expansão.
- **Geração Procedural:** Cenários dinâmicos para garantir uma experiência única a cada partida.

---

## **Stack Tecnológica**

- **Engine:** Godot.
- **Linguagem de Script:** GDScript.
- **Ferramentas Adicionais:** Trello para organização e Git para controle de versão.

---

## **Considerações de Segurança**

- **Dados Locais:** O jogo não coleta nem armazena dados do usuário.
- **Segurança Simples:** Como o jogo é offline, não há autenticação ou banco de dados no momento.

---

## **Diagrama de Classes**

O diagrama abaixo apresenta a interação entre os principais componentes do jogo, incluindo a nave controlada por IA:

![Diagrama de Classes](Diagrama)

---

## **Próximos Passos**

1. **Aprimoramento da IA:** Tornar a nave aliada mais responsiva e estratégica.
2. **Expansão dos Cenários:** Adicionar novas variações de mapas gerados proceduralmente.
3. **Melhoria na Otimização:** Reduzir ainda mais o consumo de recursos.

---
