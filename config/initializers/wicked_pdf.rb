if Rails.env.test?
  WickedPdf.config = {
    :exe_path => Rails.root.join('bin', 'wkhtmltopdf-test.sh').to_s
  }
else
  WickedPdf.config = {
    :exe_path => Rails.root.join('bin', 'wkhtmltopdf.sh').to_s
  }
end