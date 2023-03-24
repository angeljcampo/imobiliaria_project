class LeadsController < ApplicationController
  before_action :authenticate_user!, only: %i[ show edit update destroy]
  before_action :set_lead, only: %i[show edit update destroy]
  
  def index
    @leads = current_property.leads
  end

  def new
    @lead_form = Lead.new

  end

  def create
    @lead_form = Lead.new(lead_params)
    if @lead_form.save!
      redirect_to leads_path(params[:id]), notice: 'El lead ha sido creado'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @lead_form.update(lead_params)
      redirect_to leads_path(params[:id]), notice: 'El lead ha sido actualizado'
    else
      render :edit
    end
  end

  def destroy
    if @lead_form.destroy
      redirect_to leads_path(params[:id]), notice: 'El lead ha sido eliminado'
    else
      redirect_to leads_path(params[:id]), notice: 'Hubo un problema al eliminar el lead'
    end
  end

  def set_lead
    @lead_form = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:name, :phone, :email, :note, :property_id)
  end
end
