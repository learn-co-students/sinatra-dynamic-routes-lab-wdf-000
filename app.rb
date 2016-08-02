require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse 
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i**2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @string = ""
    @number.times do 
      @string << "#{@phrase}\n"
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:word1] +' '+  params[:word2] +' '+ 
      params[:word3] +' '+  params[:word4] +' '+ params[:word5] +'.'
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    case @operation
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end
