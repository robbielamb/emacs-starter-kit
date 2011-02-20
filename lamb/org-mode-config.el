

(setq org-directory ~/Dropbox/notes)
(setq org-default-notes-file (concat org-directory "notes.org"))
(setq org-startup-indented t)
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-mobile-inbox-for-pull (concat org-mobile-directory "mobileorg.org"))

(require 'org-latex)
(require 'org-bibtex)
(require 'org-exp-bibtex)


;; Export ical format using UTC time
(setq org-icalendar-use-UTC-date-time t)

