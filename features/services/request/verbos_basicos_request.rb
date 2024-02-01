class VerbosBasicosRequest
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

    def post_verbos_basicos(body)
        url_path = "/posts"
        self.class.post(url_path, @options.merge!({:body => body}))
    end

    def put_verbos_basicos(body, id)
        url_path = "/posts/#{id}"
        self.class.put(url_path, @options.merge!({:body => body}))
    end

    def get_verbos_basicos_by_id(id)
        url_path = "/posts/#{id}"
        self.class.get(url_path)
    end

    def delete_verbos_basicos_by_id(id)
        url_path = "/posts/#{id}"
        self.class.post(url_path, @options.merge!({:body => body}))
    end

end
