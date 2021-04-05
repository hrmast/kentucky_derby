# frozen_string_literal: true

require_relative "kentucky_derby/version"
require_relative "kentucky_derby/cli"
require_relative "kentucky_derby/scraper"
require_relative "kentucky_derby/team"


require "pry"
require "nokogiri"
require "open-uri"

module KentuckyDerby
  class Error < StandardError; end
  # Your code goes here...
end
