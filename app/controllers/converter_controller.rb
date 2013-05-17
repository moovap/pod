class ConverterController < ApplicationController
  def convert
    name = params[:filename]
    # html = params[:html]
    compressed_html = params[:html]
    html = ActiveSupport::Gzip.decompress(compressed_html)
    options = params[:options] || {}
    options = options.merge({use_xserver: true, javascript_delay: 5000})
    pdf = WickedPdf.new.pdf_from_string(html, options)
    send_data(pdf, :filename => "#{name}.pdf", :type => "application/pdf")
  end
end
