class GroupsController < ApplicationController
    def index
        groups = Group.all
        render json: groups
    end
    
    def show
        group = Group.find_by(id: params[:id])
        render json: group
    end
    
    def new
    @group = Group.new
    @groups = Group.new(id: params[:id])
    end
    
    def create
    
    @group = Group.new(group_params)
    if 
    @group.save
    redirect_to group_path(@group)
    else 
       render :new
    end
    end
    
    def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to group_path(@groups)
    end
    
    def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
    end
    
    
    private
    
    def set_group
    @group = Group.find(params[:id])
    end
    
    def group_params
    params.require(:group).permit(:description, :user_id) 
    
    end
end
