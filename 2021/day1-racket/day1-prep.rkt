;; hello world
#lang racket

;; learning basics
;; Numbers written in usual way; check out
;; scientific notation!
(+ 1e+10 2e+8)
;; is infixing possible?
;; {10 + 10} <--- no go
;; IMAGINARY NUMBERS
(* 1+2i 1-2i)
;; ha,ha is there actually complex conjugation?
(conjugate 1+2i) ;; YEP, lololol

;; Assuming expressions are compounded in normal
;; lisp way:
(* 1+2i (conjugate 1+2i)) ;; yep

;; Seems as though there is a shit ton of math ops
(sin (/ pi 2)) ;; 1, we're in radians
(cos 0)

;; 0.99999999 due to error accumulation on floats
(+ (sqr (sin 3)) (sqr (cos 3)))

;; like any other lisp, #t and #f are booleans
;; do if statements work as expected?
(if #t
    (println "hello, world") 
    (print "goodbye, moon")) ;; no new line
;; print is the print of REPL, beware

;; definitions/expressions -- typical lisp applies
;; (define <id> <expr>) binds id to result of expr
(define david "David")
(define (hello name)
  (println (string-append "hello " name)))
(hello david)

(define (1stFruit fruits)
  (substring fruits 0 5)) ;; zero indexing

(1stFruit "apple orange banana")

;; Note that in racket, side-effects are quite trivial.

(define (bake flavor)
  (printf "preheating oven...\n") ;; print to stdout
  (string-append flavor " pie"))
(bake "apple")
;; if you want no sideffects, only one expression
;; to a body!

(define (nobake flavor)
  string-append flavor "jello")
(nobake "green") ;; "jello"

;; Within nobake, there are no parentheses around string-append flavor "jello", so they are three separate expressions instead of one function-call expression. The expressions string-append and flavor are evaluated, but the results are never used. Instead, the result of the function is just the result of the final expression, "jello".

;; like most lisps, few identifier rules!
;; () [] {} " , ' ` ; # | \ are not allowed.

;; these are ALL legal:
;; +
;; integer?
;; pass/fail
;; Hfuhruhurr&Uumellmahaye
;; john-jacob-jingleheimer-schmidt
;; a-b-c+1-2-3

;; how to read files:
;; racket has a list comprehension sort of deal.
()
