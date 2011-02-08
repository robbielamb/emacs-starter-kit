(require 'undo-tree)
(global-undo-tree-mode)

(require 'save-visited-files)
(turn-on-save-visited-files-mode)

                                        ; Add lua!
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(add-hook 'lua-mode-hook 'hs-minor-mode)

