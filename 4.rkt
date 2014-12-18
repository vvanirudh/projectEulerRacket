#lang racket

; Author : Anirudh Vemula

(define (int->list n)
  (if (= n 0) null
      (append (int->list (quotient n 10)) (list (remainder n 10)))))

(define (max-list l)
  (if (empty? l) -10000000
      (max (car l) (max-list (cdr l)))))

(define (is-palindrome? n)
  (let([x (int->list n)])
    (equal? x (reverse x))))

(define (find-largest-palindrome)
  (max-list (filter is-palindrome? (generate-all-numbers))))

(define (generate-all-numbers)
  (generate-product 999 999))

(define (generate-product x1 x2)
  (cond [(< x1 100) '()]
        [(< x2 100) (generate-product (sub1 x1) (sub1 x1))]
        [else (cons (* x1 x2) (generate-product x1 (sub1 x2)))]))

