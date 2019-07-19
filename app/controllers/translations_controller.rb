class TranslationsController < ApplicationController
  def index
    render json: Translation.all
  end

  def create
    translation = Translation.create({:original_text => params[:original_text], :translated_text => Translation.to_pig_latin(params[:original_text])})
    render json: translation
  end
end
