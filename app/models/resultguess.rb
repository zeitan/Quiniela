class ResultGuess < ActiveRecord::Base
  belongs_to :matchguesses
  belongs_to :team
end

