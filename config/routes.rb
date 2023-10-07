Rails.application.routes.draw do
# 顧客用
# URL /customers/sign_in ...
devise_for :parent, controllers: {
  registrations: "parents/registrations",
  sessions: 'parents/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :employee, controllers: {
  registrations: "employees/registrations",
  sessions: "employees/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
