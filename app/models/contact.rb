class Contact

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :email
  field :subject
  field :body
  field :about

  attr_accessor :name, :email, :subject, :body, :about

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => false

end