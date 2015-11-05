class WelcomeController < ApplicationController
  def index
  	if params[:sort]
         value = params[:sort].to_i
         if value == 1
  		    @projects = Project.paginate(:page => params[:page], :per_page => 6).order('created_at ASC')
  		elsif value == 2
            @projects = Project.paginate(:page => params[:page] ,:per_page => 6).order('category_id ASC')
  		elsif value ==3
            @projects = Project.paginate(:page => params[:page] ,:per_page => 6).order('title ASC')
  		elsif value ==4
			@projects = Project.paginate(:page => params[:page] ,:per_page => 6).order('user_id ASC')
  		end
  	else
  		@projects = Project.paginate(:page => params[:page], :per_page => 2)
  	end
  end

  private
    def project_params
      params.require(:project).permit(:sort)
    end
end
