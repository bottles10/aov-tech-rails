class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.all.limit(8).order(created_at: :desc)
  end
end
