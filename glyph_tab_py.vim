"   _______          __ ______     __
"  / ___/ /_ _____  / //_  __/__ _/ /
" / (_ / / // / _ \/ _ \/ / / _ `/ _ \
" \___/_/\_, / .__/_//_/_/  \_,_/_.__/
"       /___/_/
"
" Name:        GlyphTab (Vim/Python3 script)
" Author:      <schickele|you_know_what|web.de>
" License:     Same as Vim
" Last change: 2023-03-11

function! GlyphTab()
python3 << EOF
import vim
import tkinter as tk

def btnInsCpy(arg):
    strA = "normal! i" + arg
    strB = ":silent !echo '" + arg + "' | tr -d '\\n' | xsel --clipboard"
    vim.command(strA)
    vim.command(strB)
    root.destroy()

def btnEdt():
    strC = ":e ~/.vim/scripts/glyph_tab_py.vim"
    vim.command(strC)
    root.destroy()

root = tk.Tk()
root.title("GlyphTab — Tkinter " + str(root.tk.call("info", "patchlevel")))
root.resizable(0,0)
root.iconphoto(False, tk.PhotoImage(file=vim.eval("$HOME") + '/.vim/bitmaps/tkinter/128px/glyphtab_icn_128px.png'))

# Change this or comment out
root.option_add("*font", 'Input 9')

tk.Button(root,command=lambda:btnInsCpy("æ"),width=17,text="æ\nAE ligature"    ).grid(row=0,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("œ"),width=17,text="œ\nOE ligature"    ).grid(row=1,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("ẞ"),width=17,text="ẞ\nCapital sharp S").grid(row=2,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("º"),width=17,text="º\nOrdinal o"      ).grid(row=3,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("©"),width=17,text="©\nCopyright"      ).grid(row=4,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("␣"),width=17,text="␣\nOpen box"       ).grid(row=5,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("¶"),width=17,text="¶\nPilcrow"        ).grid(row=6,column=0,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("✝"),width=17,text="✝\nLatin cross"    ).grid(row=7,column=0,sticky="nesw")

tk.Button(root,command=lambda:btnInsCpy("–"),width=17,text="–\nEn dash"         ).grid(row=0,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("—"),width=17,text="—\nEm dash"         ).grid(row=1,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("−"),width=17,text="−\nMinus"           ).grid(row=2,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("×"),width=17,text="×\nMultiply"        ).grid(row=3,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("≈"),width=17,text="≈\nApprox. equal"   ).grid(row=4,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("≤"),width=17,text="≤\nLess or equal"   ).grid(row=5,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("≥"),width=17,text="≥\nGreater or equal").grid(row=6,column=1,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("∞"),width=17,text="∞\nInfinity"        ).grid(row=7,column=1,sticky="nesw")

tk.Button(root,command=lambda:btnInsCpy("•"),width=17,text="•\nBullet"           ).grid(row=0,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("‣"),width=17,text="‣\nTriangular bullet").grid(row=1,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("▸"),width=17,text="▸\nSmall triangle"   ).grid(row=2,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("►"),width=17,text="►\nPointer"          ).grid(row=3,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("▪"),width=17,text="▪\nSmall square"     ).grid(row=4,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("□"),width=17,text="□\nWhite square"     ).grid(row=5,column=2,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("◻"),width=17,text="◻\nMedium square"    ).grid(row=6,column=2,sticky="nesw")

tk.Button(root,command=lambda:btnInsCpy("→"),width=17,text="→\nArrow rightwards").grid(row=0,column=3,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("←"),width=17,text="←\nArrow leftwards" ).grid(row=1,column=3,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("↓"),width=17,text="↓\nArrow downwards" ).grid(row=2,column=3,sticky="nesw")
tk.Button(root,command=lambda:btnInsCpy("↑"),width=17,text="↑\nArrow upwards"   ).grid(row=3,column=3,sticky="nesw")
tk.Button(root,command=lambda:btnEdt()      ,width=17,text="Edit\nGlyphTab"     ).grid(row=7,column=3,sticky="nesw")

tk.mainloop()
EOF
endfunction
