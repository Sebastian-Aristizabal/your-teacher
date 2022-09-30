class PagesController < ApplicationController
  def home

    @teachers = Teacher.all
  end
end
