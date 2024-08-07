(add-hook 'prog-mode-hook (lambda()
			    (toggle-truncate-lines 1)
			    (display-line-numbers-mode 1)
			    (hs-minor-mode)))
(electric-pair-mode 1)
(setq compilation-ask-about-save nil)

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package go-mode
  :ensure t
  :init
  (setq gofmt-command "goimports")
  :hook ((before-save . gofmt-before-save)
         (go-mode . (lambda () (local-set-key [f5] 'project-compile)))))

(use-package go-dlv
  :ensure t)

(use-package gotest
  :ensure t)

(use-package go-playground
  :ensure t)

(use-package company
  :ensure t
  :hook (prog-mode . company-mode))

(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1))

;; (use-package yasnippet-snippets
;;   :ensure t
;;   :after yasnippet)

(use-package eglot
  :ensure nil
  :hook (go-mode . eglot-ensure)
  (python-mode . eglot-ensure)
  (csharp-mode . eglot-ensure)
  :after (yasnippet company))

