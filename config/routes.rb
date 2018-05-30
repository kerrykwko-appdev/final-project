Rails.application.routes.draw do
  root "photos#index"
  # Routes for the Like resource:

  # CREATE
  get("/likes/new", { :controller => "likes", :action => "new_form" })
  post("/create_like", { :controller => "likes", :action => "create_row" })

  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  get("/likes/:id_to_display", { :controller => "likes", :action => "show" })

  # UPDATE
  get("/likes/:prefill_with_id/edit", { :controller => "likes", :action => "edit_form" })
  post("/update_like/:id_to_modify", { :controller => "likes", :action => "update_row" })

  # DELETE
  get("/delete_like/:id_to_remove", { :controller => "likes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })

  #------------------------------

  # Routes for the Skintone resource:

  # CREATE
  get("/skintones/new", { :controller => "skintones", :action => "new_form" })
  post("/create_skintone", { :controller => "skintones", :action => "create_row" })

  # READ
  get("/skintones", { :controller => "skintones", :action => "index" })
  get("/skintones/:id_to_display", { :controller => "skintones", :action => "show" })

  # UPDATE
  get("/skintones/:prefill_with_id/edit", { :controller => "skintones", :action => "edit_form" })
  post("/update_skintone/:id_to_modify", { :controller => "skintones", :action => "update_row" })

  # DELETE
  get("/delete_skintone/:id_to_remove", { :controller => "skintones", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/users", {:controller => "users", :action =>"index"})
  get("/users/:id_to_display", {:controller => "users", :action =>"show"})

  get("/my_wishlist",{:controller => "users", :action =>"wishlist"})
  get("/my_skintone",{:controller => "users", :action =>"skintone"})
  
end
