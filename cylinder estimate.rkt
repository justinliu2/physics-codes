;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |cylinder estimate|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (density M V)
  (/ M V))
(define (M m1 m2 m3)
  (/ (+ m1 m2 m3) 3))
(define (ad d1 d2 d3)
  (/ (+ d1 d2 d3) 3))
(define (ah h1 h2 h3)
  (/ (+ h1 h2 h3) 3))
(define (V ad ah)
  (* 3.1415 (/ ad 2) (/ ad 2) ah))
(define (error-density 
         density 
         error-mass M 
         error-radius ad 
         error-height ah)
  (* density 
     (+ (/ error-mass M) 
        (* 2 (/ error-radius ad)) 
        (/ error-height ah))))
(density (M 28.2 28.2 28.2) 
         (V (ad 20 20 20) 
            (ah 30 29.9 30)))
(error-density (density (M 28.2 28.2 28.2)
                        (V (ad 20 20 20)
                           (ah 30 29.9 30)))
               0.2 (M 28.2 28.2 28.2)
               1 (ad 20 20 20)
               1 (ah 30 29.9 30))
