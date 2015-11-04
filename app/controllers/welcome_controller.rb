class WelcomeController < ApplicationController
  def index
  	@projects = Project.all
  	@user = User.all
  	@category = Category.all
  end
end
