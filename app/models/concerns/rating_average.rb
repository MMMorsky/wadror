module RatingAverage
  extend ActiveSupport::Concern


  def average_rating
    if ratings.count == 0
      return 0
    else
      ratings.map(&:score).inject(&:+)/ratings.count.to_f
    end

  end  
end