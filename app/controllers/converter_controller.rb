class ConverterController < ApplicationController

  class BadRequest < StandardError; end

  def convert
    begin
      raise BadRequest unless params[:filename] && params[:html]
      name = params[:filename]
      html = params[:html]
      options = params[:options] || {}
      options = options.merge({use_xserver: true, javascript_delay: 7000})
      pdf = WickedPdf.new.pdf_from_string(html, options)
      send_data(pdf, :filename => "#{name}.pdf", :type => "application/pdf")
    rescue BadRequest
      render :status => 400, :flash => "Bad Request"
    end
  end
end
