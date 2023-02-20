ActiveAdmin.register Product do
  permit_params :category_id, :name, :price

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :price, min: 0.01, max: 99999
    end
    f.actions
  end
end
