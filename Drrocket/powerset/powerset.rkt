(define height-list 0)
(define (powerset x)
(set! height-list (length x))
(car x)
(powerset (cdr x))
)

  
  
(powerset '(1 2 3))
(display height-list)
