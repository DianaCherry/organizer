class OrganizerListsController < ApplicationController
  before_action :set_organizer_list, only: [:show, :edit, :update, :destroy]

  # GET /organizer_lists
  # GET /organizer_lists.json
  def index
    @organizer_lists = OrganizerList.all
  end

  # GET /organizer_lists/1
  # GET /organizer_lists/1.json
  def show
  end

  # GET /organizer_lists/new
  def new
    @organizer_list = OrganizerList.new
  end

  # GET /organizer_lists/1/edit
  def edit
  end

  # POST /organizer_lists
  # POST /organizer_lists.json
  def create
    @organizer_list = OrganizerList.new(organizer_list_params)

    respond_to do |format|
      if @organizer_list.save
        format.html { redirect_to @organizer_list, notice: 'Organizer list was successfully created.' }
        format.json { render :show, status: :created, location: @organizer_list }
      else
        format.html { render :new }
        format.json { render json: @organizer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizer_lists/1
  # PATCH/PUT /organizer_lists/1.json
  def update
    respond_to do |format|
      if @organizer_list.update(organizer_list_params)
        format.html { redirect_to @organizer_list, notice: 'Organizer list was successfully updated.' }
        format.json { render :show, status: :ok, location: @organizer_list }
      else
        format.html { render :edit }
        format.json { render json: @organizer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizer_lists/1
  # DELETE /organizer_lists/1.json
  def destroy
    @organizer_list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Organizer list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizer_list
      @organizer_list = OrganizerList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organizer_list_params
      params.require(:organizer_list).permit(:title, :description)
    end
end
