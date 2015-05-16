require 'typhoeus'

class Tapas::Response
  attr_accessor :request, :response,:body

  def initialize request
    @request = request
    @response = Typhoeus.get url,
      userpwd: basic_auth_string
  end

  def body
    response.body.gsub(/(?<=")https:\/\/#{Tapas::SERVER_NAME}(?<path>[^"]+)(?=")/) do |tapas_url|
      prefix_path $~[:path]
    end
  end

  def status
    response.response_code
  end

  def content_type
    response.headers["Content-Type"]
  end

  private
  def url
    "https://#{request.tapas_url}"
  end

  def basic_auth_string
    p [request.username,request.password].join(":")
  end

  def prefix_path path
      request.app_prefix + CGI.escape( Tapas::SERVER_NAME + path)
  end

end
