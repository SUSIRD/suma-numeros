require 'sinatra'

get '/' do
  @cuenta = params[:item]
  @cuenta = 0 if @cuenta == nil
  erb :eje5
end

get '/cuenta' do
  @cuenta = params[:c].to_i + 1
  redirect "/?item=#{@cuenta}"
end
