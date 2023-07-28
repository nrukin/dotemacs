;; файл создан 28.07.2023

;; пакеты
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; общие настройки
(setq default-input-method "russian-computer")

;; org-mode
(require 'org)

;; активация org-mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; статусы
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "PLANNED(p)" "LATER(l)" "DELEGATED(g@)" "|" "DONE(d!)" "CANCELLED(c@)")))

;; файлы agenda
(setq org-agenda-files "~/.emacs.d/.agenda_files")

;; общие настройки
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-log-reschedule 'time)
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
(setq org-refile-use-outline-path 'file)

(use-package magit
  :init
  (setq magit-commit-show-diff nil))
