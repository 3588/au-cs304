(define (member1 elam alist)
  (cond
    ((null? alist) #f)
    ((eq? (first alist) elam) #t)
    (#t (member1 elam(rest alist)))))
                  

(define (count0 alist)
  (cond
    ((null? alist) 0)
    ((zero? (first alist))
     (+ n 1) n)
    (+1 (count0 (rest alist)))
    (#t (count0 (rest alist)))))