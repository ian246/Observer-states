# Observer-states
App Flutter com gerenciamento de estado reativo via Observer, ValueNotifier e ChangeNotifier. Usa initState/dispose, contratos, controladores e builders. Estrutura modular com arquitetura MVVM. Tecnologias: Flutter, Dart e Padrão Observer. Objetivo: praticar padrões de estado e organização escalável.

# 🧭 State Manager App

Aplicativo Flutter desenvolvido para estudo e demonstração de diferentes padrões de gerenciamento de estado, como Observer personalizado, `ValueNotifier`, `ChangeNotifier` e a construção de uma arquitetura limpa e escalável com `Builders`, `Contratos`, `Controladores` e `Modelos`.

O projeto explora práticas modernas de organização de código, uso de ciclo de vida (`initState` / `dispose`) e separação de responsabilidades com foco em reatividade e desacoplamento.

---

## ✅ Tecnologias e Conceitos Utilizados

- **Flutter** → Desenvolvimento de UI multiplataforma.
- **Dart (Padrão Observer Customizado)** → Comunicação reativa entre componentes.
- **ValueNotifier / ChangeNotifier** → Notificação e reconstrução de widgets.
- **Builder Widgets** → Renderização reativa baseada em mudanças de estado.
- **Contracts (Interfaces)** → Design limpo com princípios de programação orientada a interfaces.
- **Controllers** → Camada intermediária entre UI e lógica de negócio.
- **Modelos (Models)** → Estruturas de dados fortemente tipadas.
- **initState / dispose** → Ciclo de vida de widgets bem gerenciado.

---

## ✅ Arquitetura

**Padrão:** Modular + MVVM + Observer

- Separação clara entre:
  - **Modelos** → Representam os dados.
  - **ViewModels/Controladores** → Responsáveis pela lógica de estado e regras.
  - **Views** → Interface reativa com `Builders` e `Notifiers`.
- Arquitetura extensível e flexível.
- Baseada em **contratos abstratos** para desacoplamento entre camadas.

---

## ✅ Funcionalidades

🔄 **Gerenciamento reativo com Observer personalizado**  
🔔 **Notificação de listeners com `ValueNotifier` e `ChangeNotifier`**  
⚙️ **Ciclo de vida controlado com `initState` e `dispose`**  
🔧 **Contratos e abstrações para facilitar testes e escalabilidade**  
🧱 **Builders reativos para reconstrução otimizada de widgets**
