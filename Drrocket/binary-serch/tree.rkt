;make tree
;    root
; left  right
(define (make-tree root left-branch right-branch)
  (list root left-branch right-branch))
;========================================

;get value
;root is the first element in list 
;left is the second 
;right
;if(bool) tree empty?
;
;get root
(define (root tree)
  (car tree))
;get left
(define (left-branch tree)
  (cadr tree))
;get right
(define (right-branch tree)
  (caddr tree))
;if(bool) emty tree
(define (empty-tree? tree)
  (null? tree))
;============================

;make new node
;    root
; '()    '()
(define (make-node x)
  (make-tree x '() '()))
;===========================

;insert key
(define (insert-key tree x)
  ;if #t, it is node
  (if (empty-tree? tree)
      (make-node x)
       
      (cond
        ;if x < root
        ;insert left
        ((< x (root tree))
             (make-tree (root tree)
                        (insert-key (left-branch tree) x)
                        (right-branch tree)))
        ;if x > root
        ;insert right
            ((>= x (root tree))
             (make-tree (root tree)
                        (left-branch tree)
                        (insert-key (right-branch tree) x))))))
; main for insert key and build tree
(define (build-tree x)
  (if (null? x)
      '()
      (insert-key (build-tree (cdr x)) (car x))))

;test build-tree(insert key)
(define test1 (build-tree (list 5 6 1 4 3 )))
(display "Insert Key Tree\n(define test1 (build-tree (list 5 6 1 4 3 )))\nthe tree is \n")
test1
;========================================


;Remove key
;(define (remove-key tree x) 
(display "\nMiss remove key tree\nThe find key tree function in the end\n")
         
;========================================
       


;is empty tree
(define (empty-tree x)
  (empty-tree? x))
(display "\n\nIs empty tree\n(empty-tree test1)\nthe tree is \n")
(display (empty-tree test1))
;========================================

;height tree
(define (height-tree x)
  (+ 1 (length x)))
(display "\n\nThe height of the tree\n(empty-tree test1)\nthe height is \n")
(display (height-tree test1))

;returns a list of the nodes
(define (makeListFromTree tree)
  (if (empty-tree? tree)
      '()
      (append
       ;left + root + right
       (makeListFromTree (left-branch tree))
              (list (root tree))
              (makeListFromTree (right-branch tree)))))
  
;test
(define test2 (makeListFromTree test1))
(display "\n\nMake List From Tree ")
test1
(display"the list is\n")
test2
;========================================

;find key
(define (find-key tree x)
 (not(not(member x (makeListFromTree test1)))))
;if don't have not return value
(display "\nFind the key tree\n(find-key test1 5)\n")
(find-key test1 5)
(display "\n(find-key test1 10)\n")
(find-key test1 10)
;========================================