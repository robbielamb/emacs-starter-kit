;; Load Emacs Nav

(add-to-list 'load-path (concat dotfiles-dir "lamb/emacs-nav-20110220"))
(require 'nav)

(define-key global-map "\C-cb" 'nav)
