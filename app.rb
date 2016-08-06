require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = ""
    @number.times do
      @output += "#{@phrase}\n"
    end
    @output = @output.chop + "."
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @output = ""
    i = 1
    while i <= 5
      @output += params["#{:word}#{i}"]
      i < 5 ? @output += " " : @output += "."
      i += 1
    end
    @output
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      (@num1 + @num2).to_s
    when "subtract"
      (@num1 - @num2).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end
  end

end