# Componentes do App Talles

Esta pasta contém todos os componentes reutilizáveis do projeto, criados com base no Design System do Figma.

## 📋 Estrutura

- `buttons.dart` - Componentes de botões (Primary e Secondary)
- `components.dart` - Arquivo barrel para exportar todos os componentes

## 🎨 Componentes Disponíveis

### Botões

#### PrimaryButton
Botão preenchido com a cor primária do Design System.

**Propriedades:**
- `text` (String, obrigatório) - Texto exibido no botão
- `onPressed` (VoidCallback?, opcional) - Callback quando o botão é pressionado
- `isLoading` (bool, opcional) - Mostra um indicador de loading

**Especificações do Figma:**
- Largura: 335px
- Altura: 54px
- Cor de fundo: #4CAD73 (AppColors.primary)
- Cor do texto: #FFFFFF (AppColors.white)
- Border radius: 10px
- Fonte: Inter Semi-Bold, 18px

**Exemplo de uso:**
```dart
PrimaryButton(
  text: 'Login',
  onPressed: () {
    // Ação do botão
  },
)
```

#### SecondaryButton
Botão com borda e sem preenchimento.

**Propriedades:**
- `text` (String, obrigatório) - Texto exibido no botão
- `onPressed` (VoidCallback?, opcional) - Callback quando o botão é pressionado
- `isLoading` (bool, opcional) - Mostra um indicador de loading

**Especificações do Figma:**
- Largura: 335px
- Altura: 54px
- Cor da borda: #4CAD73 (AppColors.primary)
- Largura da borda: 1.5px
- Cor do texto: #2E9D5B (AppColors.primaryDark)
- Border radius: 10px
- Fonte: Inter Semi-Bold, 18px

**Exemplo de uso:**
```dart
SecondaryButton(
  text: 'Register',
  onPressed: () {
    // Ação do botão
  },
)
```

## 🎯 Design System

Todos os componentes utilizam cores e estilos do Design System localizado em `lib/design_system/design_system.dart`.

### Cores Utilizadas:
- `AppColors.primary` - #4CAD73 (Verde principal)
- `AppColors.primaryDark` - #2E9D5B (Verde escuro)
- `AppColors.white` - #FFFFFF (Branco)
- `AppColors.textHighlight` - #333333 (Texto destacado)
- `AppColors.textMuted` - #BDBDBD (Texto secundário)

### Fonte:
- Inter (via Google Fonts)

## 📱 Visualizar Componentes

Para visualizar todos os componentes implementados, navegue até a tela "Todos os componentes" no app.

