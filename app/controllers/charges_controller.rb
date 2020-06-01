class ChargesController < ApplicationController
  before_action :get_plant, only: [:new, :checkout_payment]

  def new; end

  def checkout_payment
    address = current_user.address
    begin
      if current_user.customer_id.nil?
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          name: 'Jenny Rosen',
          address: {
            line1: address[:line1],
            postal_code: address[:postal_code],
            city: address[:city],
            state: address[:state],
            country: address[:country],
          }
         )
        current_user.update(:customer_id => customer.id)
      else
        customer = Stripe::Customer.new current_user.customer_id
      end

      charge = Stripe::Charge.create( 
        :customer    => customer.id, 
        :amount      => @plant.price, 
        :description => 'Rails Stripe customer', 
        :currency    => 'inr' 
      )

      redirect_to root_path
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to plant_path
      end
    # end
  end

  def get_plant
    @plant = Plant.find(params[:id])
  end
end
