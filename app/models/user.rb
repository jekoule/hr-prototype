class User < ApplicationRecord
  attr_accessor :password

  scope :adm_office, -> { where(office: 1) }
  scope :business_planning_and_finance, -> { where(office: 2) }
  scope :strategic_human_resources, -> { where(office: 3) }
  scope :service_management_and_facilities, -> { where(office: 4) }
  scope :director, -> { where(chart_level: 1) }
  scope :manager, -> { where(chart_level: 2) }
  scope :staff, -> { where(chart_level: 3) }

  acts_as_voter
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  ratyrate_rater

  has_one :signup
  has_many :badges
  has_many :opportunities, through: :badges
  has_many :received_badges, class_name: :Recognition, foreign_key: :receiver_id
  has_many :given_badges, class_name: :Recognition, foreign_key: :recognizer_id

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :password, length: { minimum: 6, :on => :create }
  validates :password, confirmation: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :on => :create }
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :job_description, length: {maximum: 500}

  accepts_nested_attributes_for :badges
  accepts_nested_attributes_for :signup

  before_save :encrypt_password
  after_save :clear_password
  before_save :destroy_image?

  def self.search(search)
    joins(:badges)
    .where("badges.name ILIKE ? OR users.name ILIKE ?", "%#{search}%", "%#{search}%")
    .references(:badges)
  end

  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

  def encrypt_password
    if password.present?
      self.encrypted_password = Argon2::Password.create("#{self.password}")
    end
  end

  def clear_password
    self.password = nil
  end

private
  def destroy_image?
    self.avatar.clear if @image_delete == "1"
  end
end
