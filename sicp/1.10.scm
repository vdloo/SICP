(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))
              )
        )
  )
)
(A 1 10)  ; 1024
(A 2 4)   ; 65536
(A 3 3)   ; 65536

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(f 0)   ; 0
(f 1)   ; 2
(f 2)   ; 4
(f 10)  ; 10
; (f n) computes 2n

(g 0)   ; 0
(g 1)   ; 2
(g 2)   ; 4
(g 10)  ; 1024
; (g n) computes 2^n when n is greater than 0

(h 0)   ; 0
(h 1)   ; 2
(h 2)   ; 4
(h 3)   ; 16
(h 4)   ; 65536
; (h n) computes 2^(h(n-1)) when n is greater than 1
