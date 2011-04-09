(require 'undo-tree)
(global-undo-tree-mode)

;; (require 'save-visited-files)
;; (turn-on-save-visited-files-mode)

;; Add lua!
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(add-hook 'lua-mode-hook 'hs-minor-mode)

;; Cmake stuff

(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/lamb/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lamb/auto-complete/ac-dict")
(ac-config-default)

;; Auto Complete for C/C++ programs
;; Requires the use of a .clang-completion-config.el file in the project.
(require 'auto-complete-clang)
(setq clang-completion-suppress-error 't)

(defun my-c-mode-common-hook()
  (setq ac-auto-start nil)
  (setq ac-expand-on-auto-complete nil)
  (setq ac-quick-help-delay 0.3)
  (define-key c-mode-base-map (kbd "M-/") 'ac-complete-clang)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

