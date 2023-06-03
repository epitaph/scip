(define (comment s) (+))
(define (writeln s) (write s) (newline))

(define (curt-iter guess old-guess x)
  (if (good-enough? guess old-guess x )
    guess
    (curt-iter (improve guess x) guess x)
  )
)

(define (improve guess x)
  (/ (+ (/ x (sqr guess)) (* 2.0 guess)) 3.0)
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

(define (my-curt x) (curt-iter 1.0 x x))


(writeln (my-curt 1000000))

