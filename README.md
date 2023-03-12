## vim-glyphtab
Simple and hackable glyph table a.k.a. character map for Vim written in Python using `tkinter`.

I often use special characters in my documents so I made this little widget to help me out. Clicking on an button will insert the character and simultaneously copy it to the system clipboard through xsel. Yes, I do use my mouse in Vim.

### Installation under Ubuntu

```sh
#!/bin/sh

# Install dependencies first
sudo apt install -y python3-tk xsel

mkdir -p -v ~/.vim/bitmaps/tkinter/128px
mkdir -p -v ~/.vim/scripts
git clone https://github.com/schickele/vim-glyphtab
cd vim-glyphtab
cp -v vimfiles/bitmaps/gly16.png ~/.vim/bitmaps/
cp -v vimfiles/bitmaps/tkinter/128px/glyphtab_icn_128px.png ~/.vim/bitmaps/tkinter/128px/
cp -v vimfiles/scripts/glyph_tab_py.vim ~/.vim/scripts/
```

### Usage in Vim

Type this in command mode:

```vim
:so $HOME/.vim/scripts/glyph_tab_py.vim|call GlyphTab()
```

### In your `vimrc`

You can source the script directly

```vim
so $HOME/.vim/scripts/glyph_tab_py.vim
```

or map GlyphTab to a shortcut:

```vim
nmap <leader>gt :so $HOME/.vim/scripts/glyph_tab_py.vim<bar>call GlyphTab()<cr>
```

Or place an icon in the toolbar (Gvim):

```vim
amenu <silent>icon=gly16 ToolBar.35 :so $HOME/.vim/scripts/glyph_tab_py.vim<bar>call GlyphTab()<cr>
tmenu ToolBar.35 GlyphTab
```

Or add an entry in the context menu (Gvim):

```vim
menu 1.05 PopUp.GlypthTab :so $HOME/.vim/scripts/glyph_tab_py.vim<bar>call GlyphTab()<cr>
```

### Other OS

Tested briefly under macOS Ventura with MacVim and `python 3.11.2` / `tkinter 8.6.13` but the widget can't close properly and ultimatly crashes MacVim. Apparently `tkinter` is buggy on recent macOS versions. Not tested on Windows.
