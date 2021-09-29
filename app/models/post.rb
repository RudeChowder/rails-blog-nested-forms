class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags

  validates_presence_of :name, :content

  accepts_nested_attributes_for :tags, reject_if: :all_blank

  # def tags_attributes=(tags_attributes)
  #   binding.pry
  #   tags_attributes.values.each do |tag_attributes|
  #     tag = Tag.find_or_create_by(tag_attributes)
  #     tags << tag unless tags.include? tag
  #   end
  # end
end
