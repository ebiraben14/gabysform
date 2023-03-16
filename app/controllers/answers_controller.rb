class AnswersController < ApplicationController
    before_action :set_survey, only: %i[ show edit update destroy ]
    skip_before_action :authenticate_user!, only: %i[index show]

    def index
        @answers = Answer.all
        @surveys = Survey.all
    end

    def show
      @input_field = InputField::Base.new
      @input_fields = @survey.input_fields
    end

    def new
      @answer = Answer.new
    end

    def create
      @answer = Answer.new
  
      respond_to do |format|
        if @answer.save
          format.html { redirect_to survey_url(@answer), notice: "Survey was successfully created." }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def answer_params
    #   params.require(:survey).permit(:name, :user_id, :survey)
    # end

    # def survey_params
    #   params.require(:survey).permit(:name, :user_id)
    # end
end

