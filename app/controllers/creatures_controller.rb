class CreaturesController < ApplicationController

    def index
        creatures = Creature.all 
        render json: creatures
    end
    
    def create
        creatures = Creature.create(creatures_params)
        if creatures.valid?
          render json: creatures
        else
          render json: creatures.errors
        end
      end
    
      def update
        creatures = Creature.find(params[:id])
        creatures.update(creatures_params)
        if creatures.valid?
            render json: creatures
          else
            render json: creatures.errors
          end
        end

        def destroy
            creatures = Creature.find(params[:id])
            if creatures.destroy
              render json: creatures
            else
              render json: creatures.errors
            end
          end
      private
      def creatures_params
        params.require(:creature).permit(:common_name, :scientific_binomial)
      end


    


end
