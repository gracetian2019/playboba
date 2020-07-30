class BobaTeasController < ApplicationController
    before_action :find_boba_tea, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]

    def index
        if params[:boba_shop].blank?
			@boba_teas = BobaTea.all.order("created_at DESC")
		else
			@boba_shop_id = BobaShop.find_by(name: params[:boba_shop]).id
			@boba_teas = BobaTea.where(:boba_shop_id => @boba_shop_id).order("created_at DESC")
		end
      end
  
      def new
          @boba_tea = current_user.boba_teas.build
          @boba_shops =BobaShop.all.map{|s| [s.name, s.id]}
      end
  
      def create
          @boba_tea = current_user.boba_teas.build(boba_tea_params)
          @boba_tea.boba_shop_id = params[:boba_shop_id]
          if @boba_tea.save
              redirect_to  boba_tea_path(@boba_tea), notice:'Boba Tea was successfully created'
          else  
              render 'new'
          end
      end
  
      def show
        #   @reviews = Review.where(boba_tea_id: @boba_tea)
          if @boba_tea.reviews.blank?
              @average_review = 0
          else
              @average_review = @boba_tea.reviews.average(:rating).round(2)
          end
      end
      
      def edit
        @boba_shops =BobaShop.all.map{|s| [s.name, s.id]}
      end

      def update
        @boba_tea.boba_shop_id = params[:boba_shop_id]
        if @boba_tea.update(boba_tea_params)
            redirect_to boba_tea_path(@boba_tea)
        else  
            render 'edit'
        end
      end

      def destroy
       @boba_tea.destroy
       redirect_to root_path
      end

      private 

       def find_boba_tea
         @boba_tea = BobaTea.find(params[:id])
       end

       def boba_tea_params
          params.require(:boba_tea).permit(:name, :description, :boba_shop_id, :boba_tea_img)
       end
end
