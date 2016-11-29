class NsojTv < ActiveRecord::Base
  belongs_to :nsoj_tv_category

  has_many :video_authors
  has_many :students, through: :video_authors

  accepts_nested_attributes_for :video_authors, :allow_destroy => true, :reject_if => :all_blank
end
