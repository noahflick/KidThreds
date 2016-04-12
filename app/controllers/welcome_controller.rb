class WelcomeController < ApplicationController
  def index

    if current_user
      redirect_to items_path
    end

  end
end
