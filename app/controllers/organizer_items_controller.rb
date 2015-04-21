class OrganizerItemsController < ApplicationController
  before_action :set_organizer_list

  def create
    @organizer_item = @organizer_list.organizer_items.create(organizer_item_params)
    redirect_to @organizer_list
  end

  def destroy
    @organizer_item = @organizer_list.organizer_items.find(params[:id])
    if @organizer_item.destroy
      flash[:success] = "Organizer list item was deleted"
    else
      flash[:error] = "Organizer List item could not be deleted"
    end
    redirect_to @organizer_list
  end

  private

  def set_organizer_list
    @organizer_list = OrganizerList.find(params[:organizer_list_id])
  end

  def organizer_item_params
    params[:organizer_item].permit(:content)
  end
end
