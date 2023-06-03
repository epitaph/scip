(define (sqrt-iter guess x)
  (if (good-enough? guess x )
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess x)
  (write ">>> ")
  (writeln guess)
  (< (abs (- (sqr guess) x)) 0.00001)
)

(define (sqr x) (* x x))

(define (my-sqrt x) (sqrt-iter 1.0 x))

(define (writeln s) (write s) (newline))

(writeln (my-sqrt 2))

(define (comment s) (+))

(comment "hello")

