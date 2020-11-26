# pro-dev-mode

1. [Vim Plugins](#vim-plugins)
1. [Visual Studio Code Extensions](#visual-studio-code)  
	1. [Settings](#vscode-settings)
	1. [Extensions](#vscode-extensions)
1. [Global Git Ignore Settings](#global-git-ignore-settings)

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
    "workbench.iconTheme": "eq-material-theme-icons-darker",
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
    "terminal.integrated.fontFamily": "Menlo for Powerline",
    "terminal.integrated.rendererType": "dom",
    "terminal.integrated.shell.linux": "/bin/zsh",
    "editor.renderControlCharacters": true,
    "window.zoomLevel": 2,
    "explorer.confirmDelete": false,
    "editor.fontSize": 12,
    "editor.acceptSuggestionOnCommitCharacter": false,
    "editor.acceptSuggestionOnEnter": "off",
    "editor.formatOnPaste": true,
    "workbench.editor.highlightModifiedTabs": true
}
```

### VSCode Extensions

Here's a list of general purpose extensions 

```
mhutchie.git-graph
CoenraadS.bracket-pair-colorizer-2
DavidAnson.vscode-markdownlint
EditorConfig.EditorConfig
esbenp.prettier-vscode         # works automatically with .editorconfig!
Equinusocio.vsc-material-theme
Equinusocio.vsc-material-theme-icons
ryu1kn.edit-with-shell
vscodevim.vim
redhat.vscode-yaml
ritwickdey.LiveServer
techer.open-in-browser
bierner.emojisense
```

And some more language specific or fun ones:

```
shyykoserhiy.vscode-spotify
icrawl.discord-vscode
ms-azuretools.vscode-docker
msjsdiag.debugger-for-chrome
# javascript
orta.vscode-jest 
prisma.vscode-graphql 
# C++ / IoT
ms-vscode.cpptools
platformio.platformio-ide
# go-lang
ms-vscode.Go

```

### Global Git Ignore Settings

It is considered best practice for your `.gitignore` file to only have ignore statements
relevant to the languages, libraries and tools used directly by your code.

User specific ignores, (those typically related to your choice of development platform, consisting
of editor and operating system), are better off configured in git globally.

We have included a good set of ignore statements that should cover any choice of OS, as well as
vim or vscode.  To add these, copy the `.gitignore_global` file to your user home directory,
and configure git's global `core.excludesfile` to use this file:


```
$ cd /path/to/this/cloned/repo/pro-dev-mode
$ cp .gitignore_global ~/.gitignore_global
$ git config --global core.excludesfile ~/.gitignore_global
```


[Pathogen]: https://github.com/tpope/vim-pathogen
[vscode]: https://code.visualstudio.com
[VSCodeVim]: https://marketplace.visualstudio.com/items?itemName=vscodevim.vim
[vim]: https://www.vim.org

