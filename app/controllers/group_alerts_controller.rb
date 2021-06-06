class GroupAlertsController < ApplicationController

    def index
        groupalerts = GroupAlert.all
        render json: groupalerts
    end
    
    def show
        groupalert = GroupAlert.find_by(id: params[:id])
        render json: groupalert
    end
    
    def new
    @groupalert = GroupAlert.new
    @groupalerts = GroupAlert.new(id: params[:id])
    end
    
    def create
    
    @groupalert = GroupAlert.new(alert_params)
    if 
    @groupalert.save
    redirect_to groupalert_path(@alert)
    else 
       render :new
    end
    end
    
    def update
    @groupalert = GroupAlert.find(params[:id])
    @groupalert.update(groupalert_params)
    redirect_to groupalert_path(@groupalerts)
    end
    
    def destroy
    @groupalert = GroupAlert.find(params[:id])
    @groupalert.destroy
    redirect_to groupalerts_path
    end
    
    
    private
    
    def set_groupalert
    @groupalert = GroupAlert.find(params[:id])
    end
    
    def groupalert_params
    params.require(:groupalert).permit(:group_id, :alert_id) 
    
    end


end
