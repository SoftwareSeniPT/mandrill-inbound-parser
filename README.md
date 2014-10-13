# MandrillInboundParser

Parsing inbound email from mandrill into readable text

## Installation

Add this line to your application's Gemfile:

    gem 'mandrill_inbound_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mandrill_inbound_parser

## Usage

    @message = MandrillInboundParser::Parser.new(raw)

    # Return the Sender Email
    @message.email_from

    # Return the Sender Name
    @message.sender_name

## Available Methods
    attachments
    email_from
    event
    html
    images
    recipients
    recipient_emails
    recipient_names
    sender_name
    subject
    text
      

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mandrill_inbound_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
