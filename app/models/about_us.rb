class AboutUs

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :info

  field :realtor_name
  field :realtor_bio
  field :realtor_email
  field :realtor_phone

  mount_uploader :realtor_picture,  RealtorPicUploader

  attr_accessible :title, :info, :realtor_name, :realtor_bio, :realtor_email, :realtor_phone, :realtor_picture, :realtor_picture_cache

  def self.get_page
    about_us = AboutUs.all.first
    if about_us.nil?
      about_us = AboutUs.create!
    end
    about_us
  end


end