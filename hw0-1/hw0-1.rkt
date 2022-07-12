#lang racket

;; A line starting with a semicolon is a "comment".  You write
;; comments in order to explain in English what your code does, and
;; Racket knows to ignore comments since they aren't part of the
;; program.

;; This tells Racket that you want to use words and sentences (which
;; are disabled by default).
(require (planet dyoo/simply-scheme))

;; This tells Racket that it should "know" about all the functions you
;; define in this file.  (Don't worry about this for now.)
(provide (all-defined-out))

;; Exercise 1 - Define sum-of-squares
(define (square x) (* x x))
(define (sum-of-squares a b)
  (+ (square a) (square b)))


;; Exercise 2a - Define can-drive
(define (can-drive age)
  (cond ((>= age 16) '(Good to go))
      (else '(Not yet))))


;; Exercise 2b - Define fizzbuzz
(define (fizzbuzz n)
  (cond
    [(and (equal? (remainder n 3) 0) (equal? (remainder n 5) 0)) 'fizzbuzz]
    [(equal? (remainder n 3) 0) 'fizz]
    [(equal? (remainder n 5) 0) 'buzz]
    [else n]
   )
)