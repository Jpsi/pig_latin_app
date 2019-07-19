class TranslationsController < ApplicationController
  def index
    render json: Translation.all
  end

  def create
    translation = Translation.create({:original_text => params[:original_text], :translated_text => to_pig_latin(params[:original_text])})
    render json: translation
  end

  private 
  def to_pig_latin original
    'TODO'
  end
end
