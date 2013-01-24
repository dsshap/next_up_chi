class FeatureBuilding

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name
  field :address_1
  field :address_2
  field :city
  field :state
  field :zip
  field :info
  field :rental,    type: Boolean, default: false

  mount_uploader :building_pic, BuildingPicUploader

  slug :name

  attr_accessible :name, :address_1, :address_2, :city, :state,
  :zip, :info, :rental, :building_pic, :building_pic_cache


end