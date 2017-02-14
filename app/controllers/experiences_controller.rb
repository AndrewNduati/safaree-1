class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  # GET /experiences
  # GET /experiences.json
  def index
    @experiences = Experience.all
  end

  def search
   
    @experiences = Experience.search(params[:search])
  
  end
  # GET /experiences/1
  # GET /experiences/1.json
  def show
    @experiences = Experience.find(params[:id])
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences
  # POST /experiences.json
  def create
    @experience = Experience.new(experience_params)
   # @experience.poster_url = params[experience]

    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
       
      else
        format.html { render :new }
        
      end
    end
  end

  # PATCH/PUT /experiences/1
  # PATCH/PUT /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.require(:experience).permit(:title, :tagline, :poster_url, :description, :notes, :provided, :deadline,:price, :country, :search)
    end
end
