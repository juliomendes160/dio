# LifeCycle Hooks Angular - Felipe Aguiar - Curso

<img src="https://assets.dio.me/0qeT5bUyFe1lle9GApv_0fofY28pHWtFwrAwu-Kri_U/f:webp/h:77/q:80/w:77/L2NvdXJzZXMvYmFkZ2UvNjMxYTRiZGMtNjA5MC00YzYwLWI5ODItYzMwOTY2MjZjNzgzLnBuZw" width="77" height="77">

1.1 Vamos criar componentes de maneira local
1.2 Dica Opcional para configurar ícones mais visuais

2.1 Como instalar o Angular CLI
2.2 E se já tiver versões mais atuais do Angular
2.3 Erro do NG PS1 para liberar execução de scripts
2.4 Seu novo brother chamado NG
2.5 NG NEW: Criando um projeto Angular
2.6 Estrutura de arquivos Locais

3.1 Ciclo Componente
3.2 NG Generate: Criando um novo Componente
3.3 Entendendo o Conceito de ciclo de vida

4.1 Entendendo o OnInit
4.2 Os 8 Hooks de LifeCycle Hooks
4.3 OnChanges
4.4 DoCheck e sua ordem de execução
4.5 Sub Eventos do DoCheck
4.6 A ordem doCheck, Content e View
4.7 OnDestroy
 
## Repositório

<a href="https://github.com/felipeAguiarCode/angular-playground">
    <img src="https://github.com/fluidicon.png" width="32" height="32">
</a>

[angular-playground/C6 - Life Cycle Hooks](<angular-playground/C6 - Life Cycle Hooks>)

## Ferramentas

<a href="https://code.visualstudio.com/">
    <img src="https://code.visualstudio.com/assets/favicon.ico" width="32" height="32">
</a>

<a href="https://git-scm.com/">
    <img src="https://git-scm.com/favicon.ico" width="32" height="32">
</a>

<a href="https://nodejs.org/pt">
    <img src="https://nodejs.org/static/images/favicons/favicon.png" width="32" height="32">
	<span>16.16.0</span>
</a>

## Extensões

<a href="https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens">
    <img src="https://eamodio.gallerycdn.vsassets.io/extensions/eamodio/gitlens/2025.7.105/1751361046708/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<!-- <a href="https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer">
    <img src="https://ritwickdey.gallerycdn.vsassets.io/extensions/ritwickdey/liveserver/5.7.9/1736542717282/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a> -->

<!-- <a href="https://marketplace.visualstudio.com/items?itemName=tldraw-org.tldraw-vscode">
    <img src="https://tldraw-org.gallerycdn.vsassets.io/extensions/tldraw-org/tldraw-vscode/2.96.3/1751378261028/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a> -->

<a href="https://marketplace.visualstudio.com/items?itemName=Angular.ng-template">
    <img src="https://angular.gallerycdn.vsassets.io/extensions/angular/ng-template/20.0.1/1747858914724/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag">
    <img src="https://formulahendry.gallerycdn.vsassets.io/extensions/formulahendry/auto-close-tag/0.5.15/1702959502562/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag">
    <img src="https://formulahendry.gallerycdn.vsassets.io/extensions/formulahendry/auto-rename-tag/0.1.10/1644319230173/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=DaltonMenezes.aura-theme">
    <img src="https://daltonmenezes.gallerycdn.vsassets.io/extensions/daltonmenezes/aura-theme/2.1.2/1645289325768/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula">
    <img src="https://dracula-theme.gallerycdn.vsassets.io/extensions/dracula-theme/theme-dracula/2.25.1/1721220788613/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme">
    <img src="https://pkief.gallerycdn.vsassets.io/extensions/pkief/material-icon-theme/5.24.0/1750679991237/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint">
    <img src="https://dbaeumer.gallerycdn.vsassets.io/extensions/dbaeumer/vscode-eslint/3.0.15/1749741161930/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode">
    <img src="https://esbenp.gallerycdn.vsassets.io/extensions/esbenp/prettier-vscode/11.0.0/1723648421534/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

<a href="https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig">
    <img src="https://editorconfig.gallerycdn.vsassets.io/extensions/editorconfig/editorconfig/0.17.4/1748881794309/Microsoft.VisualStudio.Services.Icons.Default" width="32" height="32">
</a>

## Util

<!-- <a href="https://www.w3.org/">
    <img src="https://www.w3.org/assets/logos/w3c/favicon-32.png" width="32" height="32">
</a> -->

<!-- <a href="https://developer.mozilla.org/pt-BR/">
    <img src="https://developer.mozilla.org/favicon.ico" width="32" height="32">
</a> -->

<!-- <a href="https://www.npmjs.com/">
    <img src="https://static-production.npmjs.com/58a19602036db1daee0d7863c94673a4.png" width="32" height="32">
</a> -->

<!-- <a href="https://cssgenerator.org/box-shadow-css-generator.html">
    <img src="https://cssgenerator.org/favicon.png" width="32" height="32">
</a> -->

<!-- <a href="https://caniuse.com/">
    <img src="https://caniuse.com/img/favicon-128.png" width="32" height="32">
</a>  -->

<!-- <a href="https://www.typescriptlang.org/">
    <img src="https://www.typescriptlang.org/favicon-32x32.png?v=8944a05a8b601855de116c8a56d3b3ae" width="32" height="32">
</a> -->

<a href="https://angular.dev/">
    <img src="https://angular.dev/assets/icons/apple-touch-icon.png" width="32" height="32">
</a>

<!-- <a href="https://angularjs.org/">
    <img src="https://angularjs.org/favicon.ico" width="32" height="32">
</a> -->

<!-- <a href="https://stackblitz.com/">
    <img src="https://stackblitz.com/_astro/favicon.svg" width="32" height="32">
</a> -->
