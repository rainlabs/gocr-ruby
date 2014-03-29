require "gocr/gocr"

module GOCR
  class Engine
    attr_accessor :whitelist, :blacklist, :database, :format, :gray_level, :numbers_only,
                  :mode, :certainty, :unrecognize_char, :dust_size, :space_width

    FORMATS = Hash[%w(UTF8 ISO8859_1 TeX HTML XML ASCII).map.with_index.to_a].freeze

    def initialize(options={})
      options.each do |k, v|
        send("#{k}=", v) if respond_to?(k)
      end
      @format = FORMATS[format].to_i
      @dust_size = -1 if dust_size.nil?
      @unrecognize_char = @unrecognize_char[0] unless unrecognize_char.nil?
    end

  end
end