class Book < ApplicationRecord
    before_validation :set_id, on: :create
    validates :id, presence: true

    def set_id
        self.id ||= SecureRandom.uuid
    end
end
