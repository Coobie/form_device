class RefreshesController < ApplicationController
  def index
  	@refrehes = Refresh.all
  end
  def show
  	@refreshes = Refresh.find(params[:id])
  end
  def edit
  	@refreshes = Refresh.find(params[:id])
  end
  def update
  	@refreshes = Refresh.find(params[:id])
  	if @refreshes.update(refresh_params)
  		redirect_to :action => 'index'
  	end
  end
  def destroy
  	Refresh.find(params[:id]).destroy
  	redirect_to :action =>'index'
  end
  def refresh_params
  	params.require(:refresh).permit(:device_name,:device_type,:device_model,:start_date,:expiry_date)
  end
  def create
  @refreshes = Refresh.new(refresh_params)
 if @refreshes.save
    flash[:notice]="Correct"
  redirect_to :action =>'index'
else
    flash[:title]=@refreshes.errors.full_messages.to_sentence
    render(:action=>'new')
end
end
 
private
  def refresh_params
    params.require(:refresh).permit(:device_name,:device_type,:device_model,:start_date,:expiry_date)
end
end
