(define (pascal row col)
  (cond ((or (= row 1) (= col 1) (= row col)) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 5 3)