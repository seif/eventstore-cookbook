module UrlHelper
  def self.get_filename(uri)
    require 'pathname'
    require 'uri'
    Pathname.new(URI.parse(uri).path).basename.to_s
  end
end

