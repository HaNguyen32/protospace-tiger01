class PrototypesController < ApplicationController
    before_action :move_to_index, except: [:index]
    def index
        @prototypes = Prototype.all
    end

    def show
        @Prototype = Prototype.find(params[:id])
      end

    def new
        @prototype = Prototype.new
    end

    def create
        @prototype = prototypes.new(prototype_params)
        if @prototype.save
            redirect_to root_path
        else
        redirect_to new_prototype_path
        end
    end

    def edit
        @prototype = Prototype.find(params[:id])
    end

        private
    def prototype_params
        params.require(:prototype).permit(:name, :catch_copy, :concept, :image)
    end
    def move_to_index
        unless user_signed_in?
            redirect_to new_user_session_path
        end
    end
end
