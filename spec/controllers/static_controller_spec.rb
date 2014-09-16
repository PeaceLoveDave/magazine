require 'rails_helper'

RSpec.describe StaticController, :type => :controller do

  describe "GET category" do
    it "returns http success" do
      get :category
      expect(response).to be_success
    end
  end

  describe "GET article" do
    it "returns http success" do
      get :article
      expect(response).to be_success
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit
      expect(response).to be_success
    end
  end

  describe "GET subscribe" do
    it "returns http success" do
      get :subscribe
      expect(response).to be_success
    end
  end

  describe "GET profile" do
    it "returns http success" do
      get :profile
      expect(response).to be_success
    end
  end

end
