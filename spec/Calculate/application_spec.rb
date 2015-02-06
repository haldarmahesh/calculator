require 'spec_helper'

describe 'Application' do

  it "test the launch" do
    parser = Parse.new
    allow(Parse).to receive(:new) { parser }
    allow(Kernel).to receive(:gets) { "add 5" }
    expect(parser).to receive(:parsing).with("add 5")
    app = Application.new
    app.start_test
  end

end 