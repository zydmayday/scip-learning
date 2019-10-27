(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (guess-enough? guess (improve guess x))
      (improve guess x)
      (cube-root-iter (improve guess x) x)))

(define (guess-enough? old-guess new-guess)
  (> 0.01
     (/ (abs (- old-guess new-guess))
        old-guess)))

(define (improve guess x)
  (/ (+ (/ x
           (* guess guess))
        (* 2 guess))
     3))

(cube-root 27)