require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  MAX_HP = 100

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    p player_1
    $game = Game.new(player_1, player_2)
    p $game
    # $player_1 = Player.new(params[:player_1])
    # $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/player_1_attacks_player_2' do
    @game = $game
    @game.attack(@game.player_2)

    erb(:player_1_attacks_player_2)
  end

  run! if app_file == $0
end
