;; compter les parentheses

(defun read-file (filePath)
  "Lire le contenu d'un fichier et le mettre dans un buffer hors du fichier. Utilise le fonction insert-file-contents ainsi que la fonction with-temp-buffer. Prends un seul argument qui est le nom et chemin d'acces du fichier."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))


(setq banane (read-file "input1.txt"))
(print banane)

