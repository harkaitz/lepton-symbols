;                                                         -*-Scheme-*-
;;;
;;; Add the default component libraries
;;;

(define geda-harkaitz-sym-path (build-path geda-data-path "sym-harkaitz"))
(for-each
 (lambda (dir)
   (if (list? dir)
       (component-library (build-path geda-harkaitz-sym-path (car dir)) (cadr dir))
       (component-library (build-path geda-harkaitz-sym-path dir)))
   )
 (reverse '(
    ("generic" "Generic Symbols (Harkaitz)")
    ("components" "Components (Harkaitz)")
    ("network" "Networking Symbols (Harkaitz)")
    ("power" "Power Symbols (Harkaitz)")
    )))
