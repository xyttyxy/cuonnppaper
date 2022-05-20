((nil . (eval . (setq overleaf-directory (ffip-project-root)))
        (eval . (add-hook 'projectile-after-switch-project-hook (lambda () (jyun/magit-pull-overleaf overleaf-directory)))))
 (latex-mode . (eval . (add-hook 'after-save-hook (lambda () (jyun/magit-push-overleaf overleaf-directory))))))
