module ApiCountries
    class Client
        def self.all
            res = Request.call(http_method: 'get',endpoint:"/all")
        end
    end
end