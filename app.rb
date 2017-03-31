require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  $count = 0

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect to('/play'), 303
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @game.game_on?
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn)) # pass who is attacking who
    erb(:attack)
  end

  post '/switch-turns' do
    @game.switch_turn
    redirect to('play'), 303
  end

  run! if app_file == $0
end
