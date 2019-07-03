class Post < ActiveRecord::Base
    belongs_to :author
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "#{:category} is not a valid category." }
    # #{:category} -- must be symbol! 

end
