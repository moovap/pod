# xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf $*
DISPLAY=:99.0
wkhtmltopdf-amd64 $*