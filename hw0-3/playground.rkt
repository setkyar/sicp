#lang racket
(require berkeley)
(provide (all-defined-out))

;;; factorial Revisited
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;;; (factorial 3)

;;; Example: Fibonacci Numbers
(define (fib n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1))
          (fib (- n 2))))))

;;; (fib 10)

;;; Example: Pig Latin
;;; You may be familiar with Pig Latin,
;;; which is a language game where words in English
;;; are altered according to a simple set of rules:
;;; take the first consonant (or consonant cluster) of an English word
;;; and move it to the end of the word and append "ay" to the word.
;;; For example, "pig" yields "igpay", "trash" yields "ashtray",
;;; and "object" yields "objectay".
(define (pigl wd)
    (if (pl-done? wd)
        (word wd 'ay)
        (pigl (word (bf wd) (first wd)))))

(define (pl-done? wd)
    (vowel? (first wd)))

(define (vowel? letter)
    (member? letter '(a e i o u)))

;;; (pigl 'pig)

;;; Example: sum-sent
(define sent '(1 2 3 4 5))

(define (sum-sent sent)
    (if (empty? sent)
        0
        (+ (first sent) (sum-sent (bf sent)))))


(sum-sent '(-1 -3 -4 -6))

;;; (+ (first sent) (sum-sent (bf sent)))

;;; (first sent)
;;; (sum-sent (bf sent))
