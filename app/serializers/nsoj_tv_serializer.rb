class NsojTvSerializer < ActiveModel::Serializer
  attributes :id, :title, :link
  has_one :nsoj_tv_category
end
