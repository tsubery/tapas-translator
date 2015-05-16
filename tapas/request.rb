class Tapas::Request
  attr_accessor :username, :password, :tapas_url, :app_prefix

  def initialize app_url, params
    @username = params.fetch("username")
    @password = params.fetch("password")
    (@tapas_url,) = params.fetch("splat")
    raise "Invalid url #{tapas_url}" unless tapas_url.start_with?(Tapas::SERVER_NAME)
    @app_prefix = app_url.gsub(/(\/get\/([^\/]+\/){2}).*/,'\1')
  end

end
