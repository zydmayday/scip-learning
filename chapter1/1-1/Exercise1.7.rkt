(define (sqrt-iter guess x)
  (if (is-guess-enough-improved? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (avg x y)
  (/ (+ x y) 2))

(define (is-guess-enough-improved? guess-old guess-new)
  (< (rate guess-old guess-new) 0.00001))

(define (rate x y)
  (if (> x y)
      (/ (- x y) y)
      (/ (- y x) x)))

(define (square x)
  (* x x))

(define (my-sqrt x)
  (sqrt-iter 1 x))

(my-sqrt 1000000000000.0)