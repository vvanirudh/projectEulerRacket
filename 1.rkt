#lang racket

(define (sum l)
  (if (empty? l) 0
      (+ (car l) (sum (cdr l)))))

(define (sum-all x)
  (if (= x 0) null
      (if (= (remainder x 3) 0) (cons x (sum-all (- x 1)))
          (if (= (remainder x 5) 0) (cons x (sum-all (- x 1)))
              (sum-all (- x 1))))))

(define (sum-multiples x)
  (sum (sum-all (- x 1))))