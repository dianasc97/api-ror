require 'rails_helper'

RSpec.describe Movie, type: :model do
    describe 'validations' do
        it { should validate_uniqueness_of(:name).case_insensitive }
    end
    
    describe 'scopes' do
        it '.search' do
            expect(Movie.where('LOWER(name) LIKE ?', "%matrix%").to_sql).to eq Movie.search('matrix').to_sql
        end
        it '.by_director' do
            expect(Movie.where('LOWER(director) LIKE ?', "%christopher nolan%").to_sql).to eq Movie.by_director('christopher nolan').to_sql
        end
    end
end