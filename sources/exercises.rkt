#lang scheme

(define Mult
  (lambda (n m)
    (if (= n 1)
        m
        (+ m (Mult (- n 1) m))
    )
  )
)

(define Exp
  (lambda (n m)
    (if (= m 0)
        1
        (Mult n (Exp n (- m 1)))
    )
  )
)

(define Fact
  (lambda (n)
    (if (= n 0)
        1
        (* n (Fact (- n 1)))
    )
  )
)

(define Fib
  (lambda (n)
    (cond ((= n 0) 0)    
          ((= n 1) 1)
          (else (+ (Fib (- n 1)) (Fib (- n 2))))
    )
  )
)

(define Ack
  (lambda (m n)
    (cond ((= m 0) (+ n 1))
          ((= n 0) (Ack (- m 1) 1))
          (else (Ack (- m 1) (Ack m (- n 1))))
    )
  )
)

(define makelist
  (lambda (a b)
    (cons a (cons b '()))
  )
)

(define list1 '())
(define list2 '(1 2 3))
(define list3 '(4 5 6))

(define Head car)
(define Tail cdr)

(define Append
  (lambda (x y)
    (cond ((null? x) y)
    ((null? y) x)
    (else (cons (Head x) (Append (Tail x) y)))
    )
  )
)

(Append list2 list3)
