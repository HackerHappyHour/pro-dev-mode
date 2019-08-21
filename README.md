# pro-dev-mode

1. [Vim Plugins](#vim-plugins)
1. [Visual Studio Code Extensions](#visual-studio-code)  
	1. [Settings](#vscode-settings)
	1. [Extensions](#vscode-extensions)

## Vim Plugins

Many of us at HHH are daily [vim]() users and enthusiasts.
Here is a list of plugins we've been known to use (installed as
submodules and loaded at start using [Pathogen]():

```
[submodule "bundle/colorschemes"]
	path = bundle/colorschemes
	url = git@github.com:flazz/vim-colorschemes.git
[submodule "bundle/javascript"]
	path = bundle/javascript
	url = git@github.com:pangloss/vim-javascript.git
[submodule "bundle/jsx"]
	path = bundle/jsx
	url = git@github.com:mxw/vim-jsx.git
[submodule "bundle/editorconfig"]
	path = bundle/editorconfig
	url = git@github.com:editorconfig/editorconfig-vim.git
[submodule "bundle/Dockerfile"]
	path = bundle/Dockerfile
	url = git@github.com:ekalinin/Dockerfile.vim.git
[submodule "bundle/docker-tools"]
	path = bundle/docker-tools
	url = git@github.com:kkvh/vim-docker-tools.git
[submodule "bundle/graphql"]
	path = bundle/graphql
	url = git@github.com:jparise/vim-graphql.git
[submodule "bundle/typescript"]
	path = bundle/typescript
	url = git@github.com:leafgarland/typescript-vim.git
[submodule "bundle/discord"]
	path = bundle/discord
	url = git@github.com:anned20/vimsence.git
[submodule "bundle/surround"]
	path = bundle/surround
	url = git@github.com:tpope/vim-surround.git
```

## Visual Studio Code

Microsoft's [Visual Studio Code][vscode] is truly something special. Not only is it the first time we've been tempted
away from [vim](), but it is an indicator of the change at Microsoft
that has made it safe to talk about in public again without getting
shamed!

Just like vim, no editor would be complete without extensibility. VSCode embraces this,
and so we've come up with a list of our favorite extensions. Topmost among
them is an excellent [VSCodeVim]() extension that brings the best of vim
to VSCode!

### VSCode Settings

A list of our favorite user settings, as taken from the user settings.json file:

```json
{
    "workbench.colorTheme": "Material Theme Darker",
    "docker.groupImagesBy": "Repository",
    "vim.insertModeKeyBindings": [
        {
            "before": ["j", "k"],
            "after": ["<Esc>"]
        }
    ],
    "terminal.explorerKind": "external",
    "[cpp]": {
        "editor.autoClosingBrackets": false
    },
    "workbench.startupEditor": "newUntitledFile",
    "terminal.integrated.rendererType": "dom",
    "terminal.integrated.shell.linux": "/bin/zsh",
    "breadcrumbs.enabled": false,
    "editor.renderControlCharacters": true,
    "workbench.iconTheme": "material-icon-theme"
}
```

### VSCode Extensions

Here's a list of general purpose extensions 

```
eamodio.gitlens
CoenraadS.bracket-pair-colorizer-2
donjayamanne.githistory
DavidAnson.vscode-markdownlint
EditorConfig.EditorConfig
Equinusocio.vsc-material-theme
icrawl.discord-vscode
Metatype.copilot-vscode
ms-azuretools.vscode-docker
ms-vscode.cpptools
PKief.material-icon-theme
ryu1kn.edit-with-shell
shyykoserhiy.vscode-spotify
vscodevim.vim
```

And some more language specific ones:

```
esbenp.prettier-vscode         # works automatically with .editorconfig!
ms-vscode.cpptools
ms-vscode.Go
msjsdiag.debugger-for-chrome
octref.vetur                   # for vue development goodness
platformio.platformio-ide
prisma.vscode-graphql          # currently in preview
redhat.vscode-yaml
ritwickdey.LiveServero
techer.open-in-browser
```

[Pathogen]: https://github.com/tpope/vim-pathogen
[vscode]: https://code.visualstudio.com
[VSCodeVim]: https://marketplace.visualstudio.com/items?itemName=vscodevim.vim
[vim]: https://www.vim.org