class MembersController < ApplicationController
  def new
    @members = Member.new
  end

  def show
    @members = Member.find(params[:id])
  end

  def index
    @members = Member.all.sort
  end
  
  def create
    @members = Member.new(member_params)
    @members.save
    redirect_to members_show_url(id: @members.id)
  end
  
  def edit
    @members = Member.find(params[:id])
  end
  
  def update
    @members = Member.find(params[:id])
    @members.update_attributes(member_params)
    redirect_to members_show_url(id: @members.id)
  end
  
  def delete
    n = Member.find(params[:id])
    n.destroy
    redirect_to members_index_path
  end
  
  private
  def member_params
    params.require(:member).permit(:name,:age)
  end
  
end
