require 'rails_helper'

#  We are testing the controllers

RSpec.describe BurgersController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns a collection of burgers" do
      get :index

      # assigns -> assumes symbol we pass in, is name of instance variable
      # can reach into index of controller and assign @bugers to something
        # testing if we get a collection
      @burgers = assigns(:burgers)
      expect(@burgers).to match_array(Burger.all)

      # any object in burger array should be instance of burger test
      it "any one of the burgers in a collection should be a " do
        get :index
        @burgers = assigns(:burgers)
        expect(@burgers.sample).to be_a(Burger)
      end

    end
  end

    it "raises an error if Burger doesn't exist" do
      expect { get :show, id: 0 }.to raise_error
    end
end













#   describe "GET show" do
#     it "returns http success" do
#       get :show
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET create" do
#     it "returns http success" do
#       get :create
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET update" do
#     it "returns http success" do
#       get :update
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET destroy" do
#     it "returns http success" do
#       get :destroy
#       expect(response).to have_http_status(:success)
#     end
#   end

