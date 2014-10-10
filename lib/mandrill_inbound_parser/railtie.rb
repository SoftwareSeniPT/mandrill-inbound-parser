require "mandrill_inbound_parser/parser"
module MandrillInboundParser
  # include ActionView::Helpers::NumberHelper
  class Railtie < Rails::Railtie
    initializer "mandrill_inbound_parser.parser" do
      ActionController.send(:include, MandrillInboundParser::Parser)
    end
  end
end