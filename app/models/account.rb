class Account < ApplicationRecord
  validates :firstname, presence: true, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters"}, length: {minimum: 2, maximum:20}
  validates :surname, presence: true, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters"},length: {minimum: 2, maximum:20} 
  validates :gender, presence: true
  validates :mobile_number, presence: true, numericality: true
  validates :gmail, presence: true, length: {minimum: 10, maximum:30}, uniqueness:true
  validates :password, presence: true, length: {in: 6..20}
  validates :terms_and_conditions, presence: true
end
