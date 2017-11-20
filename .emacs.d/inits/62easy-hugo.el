(setq easy-hugo-basedir "~/src/gitlab.com/masasam/blog/")
(setq easy-hugo-sshdomain "blogdomain")
(setq easy-hugo-root "/home/blog/")
(setq easy-hugo-previewtime "11300")
(setq easy-hugo-default-picture-directory "~/Pictures")
(define-key global-map (kbd "C-c C-e") 'easy-hugo)
(setq easy-hugo-amazon-s3-bucket-name "masasam")
(setq easy-hugo-google-cloud-storage-bucket-name "masa-storage")
(setq easy-hugo-bloglist '(((easy-hugo-basedir . "~/src/github.com/masasam/PPAP/")
			    (easy-hugo-url . "http://example.com")
			    (easy-hugo-sshdomain . "blogdomain")
			    (easy-hugo-root . "/home/ppap/"))
			   ((easy-hugo-basedir . "~/src/github.com/masasam/hugo2/")
			    (easy-hugo-url . "http://example2.net"))))
