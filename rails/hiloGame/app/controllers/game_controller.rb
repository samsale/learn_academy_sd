class GameController < ApplicationController

  def try

  params[:result] = nil
  if session[:random_number].to_i == params[:guess].to_i
    params[:result] = "Win"
  elsif params[:guess].to_i > session[:random_number].to_i
    params[:result] = "Guess lower"
  elsif params[:guess].to_i < session[:random_number].to_i
    params[:result] = "Guess higher"
  end

  current_attempt = cookies[:attempts].to_i
  current_attempt += 1
  cookies[:attempts] = current_attempt

  render "try.html.erb"
  end

  def game
    redirect_to "/try/#{params[:guess]}"
  end

  def reset
    cookies[:attempts] = 0
    params[:result] = "First Try"
    session[:random_number] = rand(1..10).to_i
    render "try.html.erb"
  end

  def names
    cookies[:player] = params[:player]
    render "try.html.erb"
  end

end
