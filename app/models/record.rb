class Record < ApplicationRecord
  validates :description, :origin, :topic, :part, presence: true
  validates :datarecord, :dataprotocol, presence: true


end
