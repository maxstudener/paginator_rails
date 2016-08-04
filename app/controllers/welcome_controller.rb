class WelcomeController < ApplicationController

  def index
    per_page = 10
    current_page = (params[:page] || 1).to_i
    number_of_pages = TestItem.count

    @data = TestItem.limit(per_page).offset((current_page - 1) * per_page)
  end
end
