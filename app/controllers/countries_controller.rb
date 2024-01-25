class CountriesController < ApplicationController
  include HTTParty

  base_uri 'https://restcountries.com/v3.1'
  require 'json'

  def home
 
    response = self.class.get("/all",headers: { 'Content-Type' => 'application/json' })
    res = JSON.parse(response.body)
    @response = JSON.pretty_generate(res)
    render json: @response
    # puts JSON.pretty_generate(@response)
  end

  def name
    response = self.class.get("/name/philippines",headers: { 'Content-Type' => 'application/json' })
    res = JSON.parse(response.body)
    @response = JSON.pretty_generate(res)
    render json: @response
    # https://restcountries.com/v3.1/name/deutschland
  end

  def language

    response = self.class.get("/lang/filipino",headers: { 'Content-Type' => 'application/json' })
    res = JSON.parse(response.body)
    @response = JSON.pretty_generate(res)
    render json: @response
    # https://restcountries.com/v3.1/lang/spanish
  end

  def capital
    response = self.class.get("/capital/manila",headers: { 'Content-Type' => 'application/json' })
    res = JSON.parse(response.body)
    @response = JSON.pretty_generate(res)
    render json: @response
    # https://restcountries.com/v3.1/region/europe
  end

end

