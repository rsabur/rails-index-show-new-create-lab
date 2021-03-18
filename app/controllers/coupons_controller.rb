class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def show
        # byebug
        @coupon = Coupon.find(params[:id])
    end

    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to Coupon.last
    end

    private

    def coupon_params
        coupon_params = params.require(:coupon).permit(:coupon_code, :store)
    end

end
