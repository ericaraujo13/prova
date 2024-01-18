# spec/controllers/municipes_controller_spec.rb

require 'rails_helper'

RSpec.describe MunicipesController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
      expect(assigns(:municipe)).to be_a_new(Municipe)
    end
  end

  describe 'GET #show' do
    it 'renders the show template' do
      municipe = create(:municipe)
      get :show, params: { id: municipe.id }
      expect(response).to render_template(:show)
      expect(assigns(:municipe)).to eq(municipe)
    end
  end

  describe 'GET #new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
      expect(assigns(:municipe)).to be_a_new(Municipe)
    end
  end

  describe 'GET #edit' do
    it 'renders the edit template' do
      municipe = create(:municipe)
      get :edit, params: { id: municipe.id }
      expect(response).to render_template(:edit)
      expect(assigns(:municipe)).to eq(municipe)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new municipe' do
        expect {
          post :create, params: { municipe: attributes_for(:municipe) }
        }.to change(Municipe, :count).by(1)

        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("Municipe was successfully created.")
      end
    end

    context 'with invalid params' do
      it 'renders the new template with unprocessable_entity status' do
        post :create, params: { municipe: attributes_for(:municipe, name: nil) }

        expect(response).to render_template(:new)
        expect(response.status).to eq(422)
      end
    end
  end

  describe 'PATCH #update' do
    let(:municipe) { create(:municipe) }

    context 'with valid params' do
      it 'updates the municipe' do
        patch :update, params: { id: municipe.id, municipe: { name: 'New Name' } }

        expect(response).to redirect_to(municipe_path(municipe))
        expect(flash[:notice]).to eq("Municipe was successfully updated.")
      end
    end

    context 'with invalid params' do
      it 'renders the edit template with unprocessable_entity status' do
        patch :update, params: { id: municipe.id, municipe: { name: nil } }

        expect(response).to render_template(:edit)
        expect(response.status).to eq(422)
      end
    end
  end
end
