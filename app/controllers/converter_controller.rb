class ConverterController < ApplicationController
  def convert
    name = params[:filename]
    html = params[:html]
    options = params[:options] || {}
    options = options.merge({:wkhtmltopdf => Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s})
    pdf = WickedPdf.new.pdf_from_string(html, options)
    send_data(pdf, :filename => "#{name}.pdf", :type => "application/pdf")
  end
end
