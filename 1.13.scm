(define (phi) (/ (+ (sqrt 5) 1) 2))
(define (fib n) (floor (/ (expt (phi) n)
                          (sqrt 5)
                       )
                )
)
(fib 88)
