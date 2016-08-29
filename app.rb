require 'pry'


require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
    result = (params[:number].to_i) ** 2
    result.to_s
  end

  get '/say/:number/:phrase' do
    result1 = params[:number].to_i
    result2 = params[:phrase]
    (result2 + "\n") * result1
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    result.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    result1 = params[:number1].to_1
    result2 = params[:number2].to_i
    new_result = (result1 + result2).to_s
  end
















end
