(define (comment s) (+))
(define (writeln s) (write s) (newline))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess x )
    guess
    (sqrt-iter (improve guess x) guess x)
  )
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess old-guess x)
  (write ">>> ")
  (write old-guess)
  (write "      ")
  (writeln guess)
  (< (abs (- guess old-guess)) (* 0.0000001 guess))
)

(define (sqr x) (* x x))

(define (my-sqrt x) (sqrt-iter 1.0 x x))


(writeln (my-sqrt 2))

