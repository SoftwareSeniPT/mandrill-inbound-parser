require 'json'
module MandrillInboundParser
  class Parser
    def initialize(raw_data)
      raw = JSON.parse(raw_data)
      @raw = raw.first
      @raw
    end

    # Get all keys
    def get_keys
      @raw.keys
    end

    # Get event
    def event
      @raw["event"]
    end
    
    # get sender email
    def email_from
      @raw["msg"]["from_email"]
    end

    # Returns the sender name
    def sender_name
      @raw["msg"]["from_name"]
    end

    # Message content as text
    def text
      @raw["msg"]["text"]
    end

    # Return to Array
    def recipient_emails
      @raw["msg"]["to"].map{|x| x.first}
    end

    # Returns to Array
    def recipient_names
      @raw["msg"]["to"].map{|x| x.last}
    end

    # Returns the subject
    def subject
      @raw["msg"]["subject"]
    end

    def html
      @raw["msg"]["html"]
    end

    def recipients
      @raw["msg"]["to"]
    end

    def attachments
      @raw["msg"]["attachments"]
    end

    def images
      @raw["msg"]["images"]
    end

  end
end