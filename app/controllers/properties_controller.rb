class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update]
  before_action :set_property, only: %i[show update delete]

  def index
    if current_user.present?
      @properties = current_user.properties
    else
      @properties = Property.all
    end
  end

  def new
    @property_form = Property.new
  end

  def create
    @property_form = Estimate.new(property_params)
    if @property_form.save
          redirect_to root_path, notice: 'La propiedad ha sido creada'
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:operation, :business_type, :price_type, :price, :commune_id, :address, :area, :room_quantity, :bath_quantity)
  end

end
