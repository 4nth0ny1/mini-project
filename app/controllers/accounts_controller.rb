class AccountsController < ApplicationController
    def index
        @accounts = Account.all 
    end 

    def show 
        @account = Account.find(params[:id])
    end 

    def new 
        @account = Account.new
    end 

    def create 
        @account = Account.new(account_params)
        @account.save 
        redirect_to account_path(@account)
    end 

    def edit 
        @account = Account.find(params[:id])
    end 

    def update 
        @account = Account.find(params[:id])
        @account.update(account_params)
        redirect_to account_path(@account)
    end 

    private 
        def account_params
            params.require(:account).permit(:company_name, :phone, :note)
        end 
end 