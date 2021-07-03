require 'rails_helper'

RSpec.describe Api::MoviesController, type: :routing do
    it { should route(:get, '/api/movies').to(action: :index) }
    it { should route(:get, '/api/movies/1').to(action: :show, id: 1) }
    it { should route(:put, '/api/movies/1') .to(action: :update, id: 1)}
    it { should route(:patch, '/api/movies/1') .to(action: :update, id: 1)}
    it { should route(:delete, '/api/movies/1') .to(action: :destroy, id: 1)}
    it { should route(:post, '/api/movies') .to(action: :create)}
end