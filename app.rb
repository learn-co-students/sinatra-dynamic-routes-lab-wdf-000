require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    (params[:phrase] + "\n") * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params.map{|k,v| v}.join(" ")
    str[0..str.length / 2 - 1] + "."
  end

  get '/:operation/:number1/:number2' do
    eval "#{params[:number1]} #{params[:operation]} #{params[:number2]}"
  end
end
