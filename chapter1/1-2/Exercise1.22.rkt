(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (= n (smallest-divisor n)))

(define (search-for-primes lowest)
  (search-for-prime (next-odd lowest) 3))

(define (search-for-prime try count)
  (cond ((= count 0) (display "are primes"))
        ((prime? try) (timed-prime-test try) (newline) (search-for-prime (next-odd try) (- count 1)))
        (else (search-for-prime (next-odd try) count))))

(define (next-odd n)
  (if (even? n)
      (+ n 1)
      (+ n 2)))

(#%require (only racket/base current-milliseconds))
(define (runtime) (current-milliseconds))

(search-for-primes 10000000000000)
    
        