require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number]
    @phrase = params[:phrase]

    @number.to_i.times do
      string += "#{@phrase.to_s}\n"
    end
    string    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    x = ""
    if @operation == 'add' || 'plus'
      x = '+'
    elsif @operation == 'subtract' || 'minus'
      x = '-'
    elsif @operation == 'multiply'
      x = '*'
    elsif @operation == 'divide'
      x = '/'
    else x = @operation
    end
    answer = @number1.send(x, @number2)
    "#{answer}"
  end


end