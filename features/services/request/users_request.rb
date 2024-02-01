class UsersRequest
    include HTTParty
    base_uri CONFIG["aplicacao1"]["url"]

    def initialize
    @timeout = CONFIG["aplicacao1"]["timeout"]
    @headers = {"Content-Type": "application/json"}
    @options = {
        "timeout": CONFIG["aplicacao1"]["timeout"],
        "headers": @headers
    }

    end

    def post_users(body)
        url_path = "/users"
        self.class.post(url_path, @options.merge!({:body => body}))
    end

    def put_users(body, id)
        url_path = "/users/#{id}"
        self.class.put(url_path, @options.merge!({:body => body}))
    end

    def get_users(id)
        url_path = "/users/#{id}"
        self.class.get(url_path)
    end

    def delete_users(id)
        url_path = "/users/#{id}"
        self.class.delete(url_path)
    end

end
