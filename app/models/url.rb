class Url < ApplicationRecord
    validates :original_url, presence: true, length: { minimum: 20}
    before_create :generate_short_url

    def generate_short_url
        self.short_url = rand(36**8).to_s(36)
    end
end
