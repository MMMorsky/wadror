class Beer < ActiveRecord::Base
  # include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def average
    binding.pry
    ratings.map { |r| r.score }.sum / ratings.count.to_f
  end

  def to_s
    "#{self.name} #{self.brewery.name} "
  end
end
