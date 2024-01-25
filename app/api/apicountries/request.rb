module ApiCountries
    class Request
        BASE_URL = 'https://restcountries.com/v3.1'
        def self.call(http_method, endpoint)
            result = RestClient::Request.execute(
                method:http_method,
                url:"#{BASE_URL}#{endpoint}",
                headers: {'Content-Type' => 'application/json'}
            )

        end
    end
end