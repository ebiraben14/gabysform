class UnlogUsersController < ApplicationController
    before_action :set_unlog_user, only: %i[ show edit update destroy ]
    skip_before_action :authenticate_user!, only: %i[index show]

    def index
        @unlog_users = Survey.all
    end

    def show
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_unlog_user
      @unlog_user = Survey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unlog_user_params
      params.require(:survey).permit(:name, :user_id)
    end
end

