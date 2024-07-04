;; Compter les parentheses
;; ***********************
;; On ouvre le fichier dans un buffer temporaire pour ne pas polluer notre buffer principale. 
;; Ensuite on utilise la fonction count-matches qui compte le nombre d'occurence d'une

(with-temp-buffer
  (insert-file-contents "input/1.txt")
  (setq val1 (count-matches "("
		 (point-min)
		 (point-max)
		 nil))
  (setq val2 (count-matches ")"
		 (point-min)
		 (point-max)
		 nil)))
(- val1 val2)

