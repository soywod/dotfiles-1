;; go-mode
(require 'go-eldoc)
(require 'go-autocomplete)
(require 'auto-complete-config)
(setenv "GOPATH" "/home/masa")
(add-to-list 'exec-path (expand-file-name "~/bin"))

(add-hook 'go-mode-hook
          '(lambda()
	     (setq gofmt-command "goimports")
	     (add-hook 'before-save-hook 'gofmt-before-save)
             (setq c-basic-offset 4)
             (setq indent-tabs-mode t)
             (local-set-key (kbd "M-.") 'godef-jump)
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
             (local-set-key (kbd "C-c a") 'go-import-add)
             (local-set-key (kbd "C-c d") 'godoc)
	     (go-eldoc-setup)))

(require 'helm-go-package)
(autoload 'helm-go-package "helm-go-package")
(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))
