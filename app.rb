require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"    
  end

  get "/square/:number" do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @phrase = "#{@params[:phrase]}\n"
    @repeat = params[:number].to_i
    "#{@phrase * @repeat}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/add/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @add = @number1 + @number2
    "#{@add}"
  end

  get "/subtract/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @minus = @number1 - @number2
    "#{@minus}"
  end

  get "/multiply/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @multiply = @number1*@number2
    "#{@multiply}"
  end
  
  get "/divide/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @divide = @number1.fdiv(@number2)
    "#{@divide}"
  end
    
end