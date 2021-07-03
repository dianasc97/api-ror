require 'rails_helper'

RSpec.describe '/api/movies', type: :request do

    let(:name) { "Teste" }

    let(:valid_attributes) do
        { name: name }
    end

    describe 'GET /index' do
        it 'renders a successful response' do
            Movie.create!
            get api_movies_url
            expect(response).to be_successful
        end
    end

    describe 'GET /show' do
        it 'renders a successful response' do
            movie = Movie.create!
            get api_movies_url(movie)
            expect(response).to be_successful
        end
    end

    describe 'POST /create' do
        it 'creates a new Movie' do
            expect do
                post api_movies_url,
                    params: { movie: valid_attributes }
            end.to change(Movie, :count).by(1)
        end
        it 'renders a JSON response with the new api_movie' do
            post api_movies_url,
                params: { movie: valid_attributes }
            expect(response).to have_http_status(:created)
            expect(response.content_type).to match(a_string_including('application/json'))
        end
    end

    describe 'PATCH /update' do
        let(:new_name) { 'Teste 2' }
        let(:new_attributes) do
            { name: new_name }
        end

        it 'updates the requested movie' do
            movie = Movie.create!
            patch api_movie_url(movie),
                params: { movie: new_attributes }
            movie.reload
            expect(movie.name).to eq(new_name)
        end
    end

    describe 'DELETE /destroy' do
        it 'destroy the requested movie' do
            movie = Movie.create!
            expect do
                delete api_movie_url(movie)
            end.to change(Movie, :count).by(-1)
        end
    end

end