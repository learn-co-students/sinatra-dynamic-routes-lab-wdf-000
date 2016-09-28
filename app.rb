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

    # if @operation == 'add'
    #   answer = @number1 + @number2
    # elsif @operation == 'subtract'
    #   answer = @number1 - @number2
    # elsif @operation == 'multiply'
    #   answer = @number1 * @number2
    # elsif @operation == divide
    #   answer = @number1 / @number2
    # end
    # "#{answer}"

    if @operation == 'add'
      x = +
    elsif @operation == 'subtract'
      x = -
    end
    answer = @number x 
    "#{@number1} x @number2}"

    "#{params[:number1].to_i.send(params[:operation], params[:number2].to_i)}"
  
  end


end