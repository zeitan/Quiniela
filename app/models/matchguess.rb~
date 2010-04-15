class MatchGuess < ActiveRecord::Base
  has_many :result_guesses
  has_many :teams, :through => :resultguesses
  belongs_to :match
  belongs_to :user
  belongs_to :team
end

