#lang racket

(define (sum-all x)
  (sum-fibonacci 1 2 x))

(define (sum-fibonacci o1 o2 x)
  (if(> o2 x) 0
     (+ (if(= (remainder o2 2) 0) o2 0) (sum-fibonacci o2 (+ o2 o1) x))))