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

  it "returns the text" do
    expect(@raw.text == "").to be false
  end

  it "returns the recipient" do
    expect(@raw.recipient_emails.first).to eq("gilang@mail.t-chat.us")
  end

  it "returns recipient names" do
    expect(@raw.recipient_names.first).to eq(nil)
  end

  it "returns the email subject" do
    expect(@raw.subject).to eq("Fwd: FW: {Disarmed} Enquiry from Tom Kuzma: Dec 21 to 28 - HomeAway.com.au #0013N")
  end

  it "returns the content as html" do
    expect(@raw.html.class).to eq(String)
  end

  it "has recipients as Array" do
    expect(@raw.recipients.class).to eq(Array)
  end

  it "has attachments as Array" do
    expect(@raw.attachments).to eq(nil)
  end

  it "has images as Array" do
    expect(@raw.images).to eq(nil)
  end
end