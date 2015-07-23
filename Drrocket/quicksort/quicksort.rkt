;get the min from the list
;(min-list '(6 5 4 1 2 3)
;1
(define (min-list x)
  (if (null? (cdr x))(car x);last one
      (if (< (car x) (min-list (cdr x)))
          (car x)
          (min-list (cdr x)))))

;(dele-min-list '(6 5 4 1 2 3))
;(6 5 4 2 3)
(define (dele-min-list x)
  (let ((min-v (min-list x)));get min
    (if (= (car x) min-v)
        (cdr x)
        (cons (car x) (dele-min-list (cdr x))))))

(define (quicksort1 x)
  (cond ((null? x) '())
        ((null? (cdr x)) (list (car x)))
        (else 
         (cons (min-list x) (quicksort1 (dele-min-list x))))))


(quicksort1 '(5 4 3 2 6 1))
(quicksort1 '(10 9 -1 0 2 6 1))