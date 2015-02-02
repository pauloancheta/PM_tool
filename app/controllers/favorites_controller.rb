class FavoritesController < ApplicationController

  def create
    project = Project.find params[:project_id]
    favorite = Favorite.new
    favorite.project_id = project.id
    favorite.user_id = current_user.id

    favorite.save
    redirect_to project_path(project), notice: "you have favorited this project"
  end

  def destroy
    project = Project.find params[:project_id]
    favorite = project.favorites.find params[:id]

    if favorite.destroy
      redirect_to project_path(project), notice: "you have unfavorited this project"
    end
  end
end
