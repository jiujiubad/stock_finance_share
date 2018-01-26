Rails.application.routes.draw do
  devise_for :users

  resources :stocks

  namespace :admin do
    resources :stocks
    namespace :base_data do
      get :index                    #首台数据更新主页
      post :update_stock_symbol     #更新股票代码和股票名称
      post :update_stock_finance_table    #更新财务表表数据
      post :update_stock_main_business    #更新股票主营业务
    end
  end

  root "welcome#index"
end
