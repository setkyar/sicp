#lang racket

(require berkeley)
(provide (all-defined-out))

;;; Write count-ums recursively.

;;; Hint #1: What should happen when the sentence is empty?
;;; Hint #2: What should happen when the first word of the sentence is "um"?
;;; Hint #3: What should happen when the first word of the sentence is NOT "um"?

(count-ums '(today um we are going to um talk about the um combining method))

(define (count-ums sent)
    (if (empty? sent)
        0
        )
)

;;; Write a procedure called countdown that takes in a number and works as follows:
;;; -> (countdown 10)
;;; '(10 9 8 7 6 5 4 3 2 1 blastoff!)
;;; -> (countdown 3)
;;; '(3 2 1 blastoff!)
;;; -> (countdown 1)
;;; '(1 blastoff!)
;;; -> (countdown 0)
;;; 'blastoff!