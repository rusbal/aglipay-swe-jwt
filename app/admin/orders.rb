ActiveAdmin.register Order do
  permit_params :user_id, :product_id, :quantity, :total_amount

  controller do
    before_action :load_products, only: [:new, :create, :edit, :update]

    def load_products
      gon.products = Product.all.select(:id, :name, :price)
    end
  end
end
