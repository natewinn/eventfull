require 'spec_helper'

describe PhotosController do 

  describe 'get show' do
    it 'should assign photo to @photo' do
      photo = FactoryGirl.create(:photo)
      get :show, id: photo.id 
      assigns(:photo).should eq(photo)
    end
  end

  describe 'put update' do
    it 'should update photo' do
      photo = FactoryGirl.create(:photo)
      put :update, id: photo.id, photo:{photo_name: "classroom"}
      assigns(:photo).photo_name.should eq("classroom")
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @photo = create(:contact)
    end

    it "deletes the contact" do
      expect{
        delete :destroy, id: @photo
      }.to change(Contact,:count).by(-1)
    end

    it "redirects to contacts#index" do
      delete :destroy, id: @photo
      expect(response).to redirect_to events_url
    end
  end
end

