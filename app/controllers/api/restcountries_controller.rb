
class Api::RestcountriesController < ApplicationController

  
    def home
  
      all = ApiCountries::Client.all
      render json: all
  
      # response = self.class.get("/all")
      # puts JSON.parse(response.body)[0]
  
    end
  
    def name
      response = self.class.get("/name")
      @response = JSON.parse(response.body)
    end
  end
  