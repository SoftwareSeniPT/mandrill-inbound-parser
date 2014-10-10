require 'spec_helper'
require 'mandrill_inbound_parser/parser'
describe "Parser" do
  before(:each) do
    @file = File.open(File.dirname(__FILE__)+'/test_data.txt').read
    @raw = MandrillInboundParser::Parser.new(@file)
  end
  it "has required ts, msg, and event key" do
    expect(@raw.get_keys.sort).to eq(["ts", "msg", "event"].sort)
  end

  it "event is inbound" do
    expect(@raw.event).to eq("inbound")
  end

  it "returns the email sender" do
    expect(@raw.email_from).to eq("gilang@softwareseni.com")
  end

  it "returns the email sender name" do
    expect(@raw.sender_name).to eq("Gilang Mahardhika")
  end
end