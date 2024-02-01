Dir[File.join(File.dirname(__FILE__), "/services/requests/*_requests.rb")].each{|file| require file}

module HelperRequests

  def users_request
    @users_request ||= UsersRequest::new
  end

end
