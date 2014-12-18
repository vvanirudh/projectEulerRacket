#lang racket

; Author : Anirudh Vemula

(define (prime? n)
  (define (not-divisible-by n d)
    (cond [(= d 1) #t]
          [(= (remainder n d) 0) #f]
          [else (not-divisible-by n (sub1 d))]))
  (if (= n 2) #t
      (not-divisible-by n (sub1 n))))

(define (find-largest-prime-factor n)
  (find-prime-factor n (floor (sqrt n))))

(define (find-prime-factor n d)
  (if(and (= (remainder n d) 0) (prime? d)) d
     (find-prime-factor n (sub1 d))))