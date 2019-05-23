defun decrypt_lisp (ciphertext)
(let ((a (symbol-name (nth (- (apply '+ (map 'list #'char-code ciphertext)) 59)
(let (result) (do-external-symbols (s :common-lisp) (push s result))
(sort result #'string<))))))
(decrypt_c (princ (string-downcase
(concatenate 'string (subseq a 6) " "
(string (char a 2)) (string (char a 0))))))))