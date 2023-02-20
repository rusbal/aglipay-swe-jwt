ActiveAdmin.register Product do
  permit_params :name

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :price
    end
    f.actions
  end
end
