class AnswersController < ApplicationController
    before_action :set_answer, only: %i[ show edit update destroy ]
    skip_before_action :authenticate_user!, only: %i[index show]

    def index
        @answers = Survey.all
    end

    def show
      @input_field = InputField::Base.new
      @input_fields = @answer.input_fields
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Survey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.require(:survey).permit(:name, :user_id)
    end
end

