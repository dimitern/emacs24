
(add-to-list 'load-path
             (expand-file-name
              "g-client"
              (expand-file-name
               "src"
               (file-name-directory
                (or load-file-name (buffer-file-name))))))
(load-library "g")

(org-export-region-as-html (point-min) (point-max)
                           'body-only g-scratch-buffer)

