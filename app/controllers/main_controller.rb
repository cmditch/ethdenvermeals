class MainController < ApplicationController
    before_action :check_params

    def index
    end

    def user_info
        @user = User.find_by({tokenid: params[:tokenid]})
        @vendor = Vendor.find_by({pin: params[:pin]})
    end

    def vendor
        @user = User.find_by({tokenid: params[:tokenid]})
        @vendor = Vendor.find_by({pin: params[:pin]})
    end

    def login
        redirect_to("/user/" + params[:tokenid] + "/" + params[:pin])
    end

    def sale
        @user = User.find_by({tokenid: params[:tokenid]})
        @vendor = Vendor.find_by({pin: params[:pin]})
        @sale = Sale.new_sale(@user, @vendor)
        redirect_to("/confirm_sale/" + @sale.id.to_s)
    end

    def confirm_sale
        @sale = Sale.find(params[:sale_id])
    end

    def refund_sale
        @sale = Sale.find(params[:sale_id])
        @sale.user.increment_credit!
        @sale.destroy
        redirect_to("/refund_complete/")
    end

    def refund_complete
    end

    private
    
    def check_params
        params.permit(:shortcode, :vendor_name, :user_id, :pin, :sale_id)
    end

end
