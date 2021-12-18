module Api
    module V1
        class ArticlesController < ApplicationController
            def index
            articles = Article.order('created_at DESC')
            render json: {status: 'SUCCESS', message: 'Loaded Post', data:articles},status: :ok
            end
            def show 
                posting = Article.find(params[:id]) 
                render json: {status: 'SUCCESS', message: 'Loaded Post', data:posting},status: :ok

            end 
            def create 
                articles = Article.new(posting_params)

                if articles.save
                  render json: {status: 'SUCCESS', message:'Saved article', data:articles},status: :ok
                else
                  render json: {status: 'ERROR', message:'Article not saved', data:articles.errors},status: :unprocessable_entity
                end
            end 
            def update
                articles = Article.find(params[:id]) 
                if articles.update(posting_params)
                    render json: {status: 'SUCCESS', message:'Saved article', data:articles},status: :ok
                  else
                    render json: {status: 'ERROR', message:'Article not saved', data:articles.errors},status: :unprocessable_entity
                  end
            end    
            def destroy
                articles = Article.find(params[:id])
                articles.destroy
                render json: {status: 'SUCCESS', message:'Deleted article', data:articles},status: :ok
              end
            private
            def posting_params
                params.permit(:title, :body)
            end
        end
    end
end           