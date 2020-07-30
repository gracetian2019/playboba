class ReviewsController < ApplicationController
    before_action :find_boba_tea
    before_action :find_review, only: [:edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @review.user_id = current_user.id
        @review.boba_tea_id = @boba_tea.id 
        if @review.save
            redirect_to boba_tea_path(@boba_tea), notice:"Review was successfully created"
        else  
            render "new"
        end
    end

    def edit
    end

    def update
        if @review.update(review_params)
            redirect_to boba_tea_path(@boba_tea)
        else  
            render 'edit'
        end
    end

    def destroy
        @review.destroy
        redirect_to boba_tea_path(@boba_tea)
    end

    private
    def find_review
        @review = Review.find(params[:id])
    end

    def find_boba_tea
        @boba_tea = BobaTea.find(params[:boba_tea_id])
    end
    def review_params
        params.require(:review).permit(:rating, :comment)
    end
end
