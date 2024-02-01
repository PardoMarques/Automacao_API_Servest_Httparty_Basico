Dir[File.join(File.dirname(__FILE__), "/services/requests/*_requests.rb")].each{|file| require file}

module HelperRequests

  def verbos_basicos_request
    @verbos_basicos_request ||= VerbosBasicosRequest::new
  end

end
