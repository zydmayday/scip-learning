(define (times a b)
  (times-iter a b 0))

(define (times-iter a count prod)
  (cond ((= count 0) prod)
        ((even? count) (times-iter (double a) (halve count) prod))
        (else (times-iter a (- count 1) (+ a prod))))) 

(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(times 2 4)
(times 3 4)
(times 2 5)
(times 3 5)