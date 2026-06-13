(defstruct item
  nome
  tipo
  preco
  forcaMagica)

(defun adicionaImposto (preco)
  (* preco 1.15))

(defun bonusMaldicao (forca)
  (cond
    ((> forca 80) (* forca 1.5))
    (t forca)))

(defun descricaoVenda (i)
  (format nil "~a | Preco: ~a | Forca Magica: ~a"
          (item-nome i)
          (item-preco i)
          (item-forcaMagica i)))

(defun processaVenda (lista)
  (let* ((armas (remove-if-not (lambda (i) (eq (item-tipo i) 'arma)) lista))
         (comImposto (mapcar (lambda (i)
                                (make-item :nome (item-nome i)
                                           :tipo (item-tipo i)
                                           :preco (adicionaImposto (item-preco i))
                                           :forcaMagica (item-forcaMagica i)))
                              armas))
         (comBonus (mapcar (lambda (i)
                              (make-item :nome (item-nome i)
                                         :tipo (item-tipo i)
                                         :preco (item-preco i)
                                         :forcaMagica (bonusMaldicao (item-forcaMagica i))))
                            comImposto)))
    (mapcar #'descricaoVenda comBonus)))

(defun main ()
  (let ((catalogo (list
                    (make-item :nome "Espada Flamejante" :tipo 'arma :preco 100.0 :forcaMagica 90)
                    (make-item :nome "Pocao de Cura" :tipo 'pocao :preco 20.0 :forcaMagica 10)
                    (make-item :nome "Arco Sombrio" :tipo 'arma :preco 150.0 :forcaMagica 70)
                    (make-item :nome "Amuleto Antigo" :tipo 'artefato :preco 300.0 :forcaMagica 95)
                    (make-item :nome "Adaga Amaldicoada" :tipo 'arma :preco 80.0 :forcaMagica 85))))

    (format t "=== Resultado da Venda (Armas) ===~%")
    (dolist (linha (processaVenda catalogo))
      (format t "~a~%" linha))))

(main)
