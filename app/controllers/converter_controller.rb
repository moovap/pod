class ConverterController < ApplicationController
  def convert
    name = params[:filename]
    html = params[:html]
    options = params[:options] || {}
    pdf = WickedPdf.new.pdf_from_string(html, options)
    send_data(pdf, :filename => "#{name}.pdf", :type => "application/pdf")
  end
end
