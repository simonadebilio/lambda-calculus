#lang scheme

(define Fac
  (lambda (n)
     (if (= n 0) 1
           (* n (Fac (- n 1)))
     )
  )
)

(define F
  (lambda (n)
    (+ (Fac n) n)
  )
)
