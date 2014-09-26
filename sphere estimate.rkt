;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |sphere estimate|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))

(define (density M V)
  (/ M V ))
(check-expect (M 1 1 1)
              1)
(define (M m1 m2 m3)
  (/ (+ m1 m2 m3) 3))
(check-expect (ad 1 1 1)
              1)
(define (ad d1 d2 d3)
  (/ (+ d1 d2 d3) 3))

(define (V ad)
  (* (/ 4 3) 
     3.1415 
     (/ ad 2) (/ ad 2) (/ ad 2)))
(define (error-density density error-mass M error-radius ad)
  (* density 
     (+ 
      (/ error-mass M) 
      (* 3 (/ error-radius (/ ad 2))))))
(density (M 22 22 22) (V (ad 17.2 17.2 17.18)))
(error-density (density (M 22 22 22) (V (ad 17.2 17.2 17.18)))
                 0.2
                 (M 22 22 22)
                 0.1
                 (ad 17.2 17.2 17.18))