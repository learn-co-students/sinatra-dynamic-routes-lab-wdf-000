require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    (1..@num.to_i).collect {|i| "#{@phrase}\n"}
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get  "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == "add"
      return "#{@num1.to_i + @num2.to_i}"
    elsif @operation =="subtract"
      return "#{@num1.to_i - @num2.to_i}"
    elsif @operation =="multiply"
      return "#{@num1.to_i * @num2.to_i}"
    else
      return "#{@num1.to_i / @num2.to_i}"
    end
  end


end
