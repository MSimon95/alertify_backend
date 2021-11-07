class AlertsController < ApplicationController

    def index
        alerts = Alert.all
        render json: alerts
    end
    
    def show
        alert = Alert.find_by(id: params[:id])
        render json: alert
    end
    
    def new
    @alert = Alert.new
    @alerts = Alert.new(id: params[:id])
    end
    
    def create
    
    @alert = Alert.create(alert_params)

    render json: @alert
  
    end
    
    def update
    @alert = Alert.find(params[:id])
    @alert.update(alert_params)
  
    render json: @alert
    end
    
    def destroy
    @alert = Alert.find(params[:id])
    @alert.destroy
    render json: @alert   
    end
    
    
    private
    
    def set_alert
    @alert = Alert.find(params[:id])
    end
    
    def alert_params
    params.permit(:id, :event, :image, :info, :date, :time, :place) 
    
    end

end
