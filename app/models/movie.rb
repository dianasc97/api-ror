class Movie < ApplicationRecord
    validates :name, uniqueness: {case_sensitive: false}

    scope :search, ->(name) { where('LOWER(name) LIKE ?', "%#{name.downcase}%") if name.present? }
    scope :by_director, ->(director) { where('LOWER(director) LIKE ?', "%#{director.downcase}%") }
end
