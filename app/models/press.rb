class Press

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :snippet
  field :link

  mount_uploader :press_pic, PressPicUploader

  attr_accessible :title, :snippet, :link, :press_pic, :press_pic_cache


end
