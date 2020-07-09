# frozen_string_literal: true

ActiveAdmin.register OrderItem do

  # TODO
  menu label: "Order Items"

  permit_params :order_id, :integer, :product_name

  index do
    column :order_id
    column :integer
    column :product_name
    actions
  end

  show do
    attributes_table title: "Order Items" do
      row :integer
      row :product_name
    end
  end

  form do |f|
    f.inputs do
      f.input :integer
      f.input :product_name, as: :select, collection: OrderItems.all, prompt: "- choose -"
    end
    f.actions
  end
end
