class MunicipesController < ApplicationController
  before_action :set_municipe, only: %i[ show edit update destroy ]

  def index
    @municipes = Municipe.all
  end

  def show
  end

  def new
    @municipe = Municipe.new
  end

  def edit
  end

  def create
    @municipe = Municipe.new(municipe_params)

    if @municipe.save
       redirect_to municipe_url(@municipe), notice: "Municipe was successfully created."
    else
        render :new, status: :unprocessable_entity
    end
  end

  def update
    if @municipe.update(municipe_params)
      redirect_to municipe_url(@municipe), notice: "Municipe was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_municipe
      @municipe = Municipe.find(params[:id])
    end

    def municipe_params
      params.require(:municipe).permit(:name, :email, :birthday, :phone, :photo, :status)
    end
end
