<h1 align="center">
  <br>
  <a href="#"><img src="https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/nvimfy.png" alt="Nvimfy" /></a>
  <br>
  Nvimfy
  <br>
</h1>

<div align="center">

[![Vimscript](https://img.shields.io/badge/Made%20with%20Vimscript-darkgreen.svg?style=for-the-badge&logo=vim)](https://vim.org)
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-red.svg?style=for-the-badge&logo=lua)](https://lua.org)

</div>

<h6 align="center">V-2.1</h6>

<div align="center">

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.5+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/AyeSpacey/Nvimfy.svg?style=flat-square&label=Issues&color=fc0330)](https://github.com/AyeSpacey/Nvimfy/issues)
[![Last Commit](https://img.shields.io/github/last-commit/AyeSpacey/Nvimfy.svg?style=flat-square&label=Last%20Commit&color=fc0330)](https://github.com/AyeSpacey/Nvimfy/pulse)

</div>

<h4 align="center">A minimal and robust Neovim configuration, Built For Your Android Screens For Termux That Wont Let You DOWN.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#prerequisites">Prerequisites</a> •
  <a href="#how-to-setup">Setup</a> •
  <a href="#showcase">Showcase</a> •
  <a href="#credits">Credits</a> •
  <a href="#related">Related</a> •
  <a href="#support">Contribute</a>
</p>

## Key Features

* AutoSave - Make changes, See changes
* Syntax highlighting - Native & Treesitter
* Code Intellisense & AutoCompletion - Much Like Vs-Code
* Dark ColorSchemes - EyeCandy for Eyes
* Smooth Scrolling

* Robust Plugins (39)
* Native Speed - Won't Slow Down

 * Find files using FZF
 * Quick access Commands Using Quickmenu         ( Space + c )
 * Color Highlighter using nvim-colorizer
 * Easily Write html using emmet                 ( , + , )
 * Better Snippets
 * Git Integretion Using Fugitive & Signify
 * Sublime type Multi Cursor Support             ( Ctrl + arrow_keys )

* Do Anything Right on your 📱
* Cross Platform
  - Android  [ Termux ]
  - Windows [ Nvim-qt ]
  - Mac [ Not Tested ]

## Prerequisites
In Order To Clone And Run This Perfectly fine you'll need installed on your device. From your command line.

* neovim  ( Ofcourse )

* git     ( For Installing Plugins Using vim-plug)
* nodejs  (For Lsp AutoCompletion )
* clang   (For Treesitter Syntax Highlighting)

```bash
apt install neovim git nodejs clang fzf
```

## How To Setup

Clear the ~/.config/nvim/*
```bash
rm -rf ~/.config/nvim/*
```

if not create one ~/.config/nvim
```bash
mkdir ~/.config/nvim
```

then, 
```bash
git clone https://github.com/AyeSpacey/Nvimfy ~/.config/nvim
```

Note: If you want to make your PROMPT & terminal more useful Use [Termify](https://github.com/AyeSpacey/Termify-Termux) my whole configuration for your Termux


## Showcase
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/git.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/menu.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/color.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/treesit.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/html.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/js.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/ocean.jpg)
![Prew](https://raw.githubusercontent.com/AyeSpacey/repo-conf/main/nvimfy/dogrun.jpg)

- You May be interested in my Personal config: 
  - my [coc-settings.json](https://github.com/AyeSpacey/Nvimfy/wiki/My-coc-settings.json)
  - my [init.vim](https://github.com/AyeSpacey/Nvimfy/wiki/My-Init.vim)
  - my [base.lua](https://github.com/AyeSpacey/Nvimfy/wiki/My-base.lua)
## Future Updates

- [x] Reliable Speed
- [ ] Native Lsp
- [ ] All LuaScript
- [ ] Git Integration in StatusLine 

## Credits

- The Plugins I Used
- awesomevim
- neovimcraft

## Related

- [LunarVim](https://github.com/LunarVim/LunarVim)
- [Nvchad](https://github.com/NvChad/NvChad)

## You may also like...

- [Termify](https://github.com/AyeSpacey/Termify-Termux)  - EyeCandy For your Shell

## Support
#### Contributions, issues, and feature requests are welcome!
Give a ⭐️ if you like this project!