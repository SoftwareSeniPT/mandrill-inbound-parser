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
  end
end