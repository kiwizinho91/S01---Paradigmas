(defstruct erva
  nome
  precoBase)

(defun calculaDosagem (peso idade)
  (cond
    ((and (< idade 5) (< peso 20)) "10ml")
    ((<= idade 12) "25ml")
    (t "50ml")))

(defun ajustaPreco (e)
  (let ((nome (erva-nome e))
        (preco (erva-precoBase e)))
    (cond
      ((string= nome "Ginseng") (* preco 3.0))
      ((string= nome "Lotus") (* preco 1.5))
      (t preco))))

(defun descricaoErva (e peso idade)
  (format nil "Erva: ~a | Preco ajustado: ~a | Dosagem: ~a"
          (erva-nome e)
          (ajustaPreco e)
          (calculaDosagem peso idade)))

(defun main ()
  (let ((ginseng (make-erva :nome "Ginseng" :precoBase 10.0))
        (lotus (make-erva :nome "Lotus" :precoBase 8.0))
        (camomila (make-erva :nome "Camomila" :precoBase 5.0)))

    (format t "~a~%" (descricaoErva ginseng 15 4))

    (format t "~a~%" (descricaoErva lotus 40 10))

    (format t "~a~%" (descricaoErva camomila 70 30))))

(main)
