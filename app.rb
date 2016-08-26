require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse = params[:name].reverse
  end

  get "/square/:number" do
    @square = ((params[:number].to_i) * (params[:number].to_i)).to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @array = []
    @num.times do
      @array << @phrase + "\n"
    end
    @array.join("")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values[1].join(" ") + '.'
  end

  get "/:operation/:number1/:number2" do
    if(params[:operation] == 'add')
      @total = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif(params[:operation] == 'subtract')
      @total = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif(params[:operation] == 'multiply')
      @total = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif(params[:operation] == 'divide')
      @total = (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end