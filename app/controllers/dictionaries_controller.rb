class DictionariesController < ApplicationController
  
  before_action :set_dectionary, only: [:edit,:show, :update,:destroy]
  
  def index
    @dictionaries = Dictionary.all.order(created_at: :desc)
  end

  def new
    @dictionary = Dictionary.new
  end

  def create
    dictionary = Dictionary.new(dictionary_params)
    if dictionary.save!
    redirect_to dictionaries_url, notice: "#{dictionary.eword}-#{dictionary.jword} is registerd"
  else
    render 'new'
  end
  end

  def show
  end

  def edit
  end

  def update
    @dictionary.update!(dictionary_params)
    redirect_to dictionaries_url, notice: "#{@dictionary.eword}を更新しました"
  end

  def destroy
    dictionary.destroy
    redirect_to dictionaries_url, notice: "#{@dictionary.eword}をdeleteしました"
  end

  private

  def dictionary_params
    params.require(:dictionary).permit(:eword, :jword, :speech, :detail, :grammer)
  end
  def set_dectionary
    @dictionary = Dictionary.find(params[:id])
  end
end
