require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @answer = @num * @num
    @answer.to_s
  end

  get '/say/:number/:phrase' do
    @array = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @array << @phrase
    end
    @array.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    @bruh = params[:captures]
    @bruh = @bruh.join(" ")
    @bruh + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # binding.pry
    if params[:operation] == "add"
      @answer = @num1 + @num2
    elsif params[:operation] == "subtract"
      @answer = @num1 - @num2
    elsif params[:operation] == "multiply"
      @answer = @num1 * @num2
      # @answer.to_s
    elsif params[:operation] == "divide"
      @answer = @num1 / @num2
      # @answer.to_s
    end
    @answer.to_s
  end

end
