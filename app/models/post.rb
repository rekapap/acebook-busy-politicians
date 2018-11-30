require 'time'

class Post < ApplicationRecord
  require 'sanitize'
  include ActionView::Helpers::TextHelper
  before_save :sanitize_message, :add_newline
  belongs_to :user
  has_many :comments
  has_many :likes

  def likecount
    likes.count
  end

  def post_already_liked_by_current_user?(current_user)
    likes.find_by(user_id: current_user.id)
  end

  def sanitize_message
    Sanitize.fragment(message, Sanitize::Config::RELAXED)
  end

  def add_newline
    string = message
    html = simple_format(string)
    self.message = html
  end

  def formatted_time
    Time.parse(updated_at.to_s).strftime('%-d %b %Y at %k:%M')
  end
end
