require 'spec_helper'
describe ConverterController do

  it "returns pdf file on valid params" do
    post :convert, :filename => "test", :html => "<h3>Teste</h3>"
    response.headers["Content-Type"].should == "application/pdf"
    response.headers["Content-Disposition"].should == "attachment; filename=\"test.pdf\""
  end

  it "returns Bad Request 400 code on nil name" do
    post :convert, :filename => nil, :html => "<h3>Teste</h3>"
    assert_response 400
  end

  it "returns Bad Request 400 code on nil name" do
    post :convert, :filename => "test", :html => nil
    assert_response 400
  end

end