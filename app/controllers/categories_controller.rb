class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(goal_params)
  	
  	if @category.save
    	redirect_to @category
  	else
    	render 'new'
  	end
	end

	def show
	  @category = Category.find(params[:id])
	end

	def edit
  	@category = Category.find(params[:id])
	end

	def update
	  @category = Category.find(params[:id])
	 
	  if @category.update(goal_params)
	    redirect_to @category
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @category = Category.find(params[:id])
	  @category.destroy
	 
	  redirect_to goals_path
	end

	def index
  	@categories = Category.all
	end

private
  def goal_params
    params.require(:goal).permit(:title, :body, :due_date)
  end

end

