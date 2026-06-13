(defstruct local
  nome
  elemento
  dificuldade
  recompensa)
(defun bonusElemental (l)
  (let ((rec (local-recompensa l))
        (elem (local-elemento l)))
    (cond
      ((or (eq elem 'pyro) (eq elem 'electro)) (* rec 1.2))
      ((eq elem 'cryo) (* rec 1.1))
      (t rec))))

(defun valeAPena (l)
  (and (> (bonusElemental l) 500)
       (<= (local-dificuldade l) 3)))

(defun rotaDeFarm (lista)
  (let ((recomendados (remove-if-not #'valeAPena lista)))
    (mapcar (lambda (l)
              (format nil "~a - Recompensa: ~a" (local-nome l) (bonusElemental l)))
            recomendados)))

(defun main ()
  (let ((catalogo (list
                    (make-local :nome "Dominio do Vulcao" :elemento 'pyro :dificuldade 2 :recompensa 450)
                    (make-local :nome "Cova de Cristal" :elemento 'cryo :dificuldade 4 :recompensa 480)
                    (make-local :nome "Templo Eletrico" :elemento 'electro :dificuldade 3 :recompensa 420)
                    (make-local :nome "Ruinas Aquaticas" :elemento 'hydro :dificuldade 2 :recompensa 510)
                    (make-local :nome "Pico do Vento" :elemento 'anemo :dificuldade 1 :recompensa 300))))

    (format t "=== Catalogo Completo ===~%")
    (dolist (l catalogo)
      (format t "~a | Recompensa com bonus: ~a~%" (local-nome l) (bonusElemental l)))


    (format t "~%=== Rota de Farm Recomendada ===~%")
    (dolist (linha (rotaDeFarm catalogo))
      (format t "~a~%" linha))))
(main)
