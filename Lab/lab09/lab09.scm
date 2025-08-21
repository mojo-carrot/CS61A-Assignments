(define (over-or-under num1 num2) 
  (cond 
    ((< num1 num2) -1)
    ((> num1 num2) 1)
    ((= num1 num2) 0)
  )
)

(define (make-adder num) 
  (define (inc x)
    (+ num x)
  )
  inc
)

(define (composed f g)
  (define (calc x)
    (f (g x))
  )
  calc
)

(define (repeat f n)
  (define (repeat_f x)
    (if (>= n 1)
      ((repeat f (- n 1)) (f x))
      x
    )
  )
  repeat_f
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
  (if (zero? b)
    a
    (gcd b (modulo a b))
  )
)
