class Dictionary < ApplicationRecord
	validates :eword, :jword,  presence: true
	validate :add_errors

	def add_errors
		if speech.blank?
			errors[:base] << "choose verb or adv or preposition"
		end

		if grammer.blank?
			errors[:base] << "choose 5 文型"
		end
	end
				
end
