class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)

    list.save

    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end
end

On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   app/controllers/lists_controller.rb
        modified:   app/views/lists/index.html.erb
        modified:   config/routes.rb

no changes added to commit (use "git add" and/or "git commit -a")