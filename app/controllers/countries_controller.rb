class CountriesController < ApplicationController
  include HTTParty

  base_uri 'https://restcountries.com/v3.1'
  require 'json'

  def home
    if params["page"] == "all" 
      response = self.class.get("/all",headers: { 'Content-Type' => 'application/json' })

    else
      response = self.class.get("/#{params["page"]}/#{params["qry"]}",headers: { 'Content-Type' => 'application/json' })
    end
    
    case response.code
    when 200
      res = JSON.parse(response.body)
      @response = JSON.pretty_generate(res)
      render json: @response
    when 404
      render json: 'iss, walang ganyan!'
    else
      render json: 'better try again next time!'
    end
    
  end

end

