(define (square x)
  (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (large-two-sum-of-square a b c)
  (cond ((and (< a b) (< a c)) (sum-of-square b c))
        ((and (< b a) (< b c)) (sum-of-square a c))
        ((and (< c b) (< c a)) (sum-of-square a b))))

(large-two-sum-of-square 1 2 3)