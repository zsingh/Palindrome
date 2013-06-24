;; Homework Assignment 
;; Artificial Intelligence
;; Written by: Zachary Singh


;;function to check to see if it is a single value
(define (tail-check lst) 
	(cond 
		((null? (cdr lst)) #t)
		(else #f)
		))

;;function to get the last value in a list
(define (get-last lst)
	(cond
	  ((tail-check lst) (car lst))
	  (else (get-last (cdr lst)))
	  ))

;;function to remove the last value in a list
(define (remove-last lst)
	(cond
	  ((tail-check lst) '())
	  (else(cons(car lst) (remove-last(cdr lst))))
	  ))

;;function that return a boolean if a list is a palindrome
(define (palindrome? lst)
	(cond
	  ((null? lst) #t)
	  ((tail-check lst) #t)
	  (else (and (equal? (car lst) (get-last lst)) (palindrome?(remove-last(cdr lst)))))
	  ))
