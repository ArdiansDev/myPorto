      class Api::V1::PostingsController < ApplicationController
            before_action :authorize_request, 
            # before_action :find_user, except: %i[create index]    
            def index
            postings = Posting.order('created_at DESC')
            render json: {status: 'SUCCESS', message: 'Loaded Post', data:postings},status: :ok
            end
            def show 
                posting = Posting.find(params[:id]) 
                render json: {status: 'SUCCESS', message: 'Loaded Post', data:posting},status: :ok

            end 
            def create 
                postings = Posting.new(posting_params)

                if postings.save
                  render json: {status: 'SUCCESS', message:'Saved article', data:postings},status: :ok
                else
                  render json: {status: 'ERROR', message:'Article not saved', data:postings.errors},status: :unprocessable_entity
                end
            end 
            def update
                postings = Posting.find(params[:id]) 
                if postings.update(posting_params)
                    render json: {status: 'SUCCESS', message:'Saved article', data:postings},status: :ok
                  else
                    render json: {status: 'ERROR', message:'Article not saved', data:postings.errors},status: :unprocessable_entity
                  end
            end    
            def destroy
                postings = Posting.find(params[:id])
                postings.destroy
                render json: {status: 'SUCCESS', message:'Deleted article', data:postings},status: :ok
              end
            private
            def posting_params
                params.permit(:title, :body)
            end
        end
         