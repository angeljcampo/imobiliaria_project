class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update]
  before_action :set_property, only: %i[show edit update delete]

  def index
    if current_user.present?
      @properties = current_user.properties
    else
      @properties = Property.all
    end
  end

  def new
    @property_form = Property.new
    @communes = Commune.all
  end

  def create 

    @property_form = Property.new(property_params)
    if @property_form.save!
      redirect_to root_path, notice: 'La propiedad ha sido creada'
    else
      render :new
    end
  end

  def show
  end

  def edit
    @communes = Commune.all
  end

  def update
    if @property_form.update(property_params)
      redirect_to property_path(@property_form), notice: 'La propiedad ha sido actualizada'
    else
      render :edit
    end
  end

  def delete
  end

  private

  def set_property
    @property_form = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:operation,:property_type, :business_type, :price_type, :price, :commune_id, :address,:user_id, :area, :room_quantity, :bath_quantity, :main_image, prop_images: [])
  end

end
