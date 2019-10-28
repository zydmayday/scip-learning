(define (fast-expt b n)
  (expt-iter b n 1))

(define (expt-iter b count prod)
  (if (= count 0)
      prod
      (if (even? count)
          (expt-iter b (/ count 2) (square prod))
          (expt-iter b (- count 1) (* b prod)))))

(define (square x)
  (* x x))

(fast-expt 2 100)