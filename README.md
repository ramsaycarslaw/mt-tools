# mt-tools
Some tooling surrounding the mt language

## Emacs
Place the `mt-mode.el` file in `.emacs.d/site-lisp/mt-mode/mt-mode.el` if these directorys do not exist you may need to create them. Once they are in place you can use the following in you `init.el` file to get access to the major mode.

``` emacs-lisp
(use-package mt-mode
  :load-path "site-lisp/mt-mode")
```


### Optional Configuration
The following adds automatic mode detection to mt mode.
``` emacs-lisp
(use-package mt-mode
  :load-path "site-lisp/mt-mode"
  :mode "\\.mt\\')
```
## Vim 

Copy the file `mt.vim` into `~/.vim/syntax`, if the directory does not already exist run:
```
mkdir -p ~/.vim/syntax/
```

Next you need to modify your `ftdetect` such that vim can recognise the file type mt.
To do this create again a new directory:
```
mkdir -p ~/.vim/ftdetect/
```

After you have created that directory create the file `mt.vim` within it and copy the following line:
```
au BufRead,BufNewFile *.mt set filetype=mt
```
