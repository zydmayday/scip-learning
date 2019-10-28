(define (times a b)
  (if (= b 0)
      0
      (if (even? b)
          (times (double a) (halve b))
          (+ a (times a (- b 1))))))

(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(times 3 4)