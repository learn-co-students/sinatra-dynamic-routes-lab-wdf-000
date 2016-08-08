require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @rev_name = @name.split("").reverse.join
    "#{@rev_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = ""
    @num.times do
      @phrases += "#{@phrase}\n"
    end
    "#{@phrases}" 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ")
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result  = nil

    case @operation
    when "add"
      @result = (@num1 + @num2)
    when "subtract"
      @result = (@num1 - @num2)
    when "multiply"
      @result = (@num1 * @num2)
    when "divide"
      @result = (@num1 / @num2)
    end
    "#{@result}"
  end

end