require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:valid_params) do
    {
      'local_id' => local_test.id,
      'user_identifier' => user_test.identifier
    }
  end
  describe 'POST /favorites' do
    it 'should returns success created favorite' do
      expect do
        post '/favorites', params: valid_params
      end.to change(FavoriteLocal, :count).by(+1)
      expect(response).to have_http_status(200)
    end
    it 'should returns error not created favorite' do
      # become in invalid_params because local_id and user_identifier = nil
      valid_params['local_id'] = nil
      valid_params['user_idenfier_id'] = nil
      post '/favorites', params: valid_params
      expect(response).to have_http_status(422)
    end
  end
end

RSpec.describe 'Local API', type: :request do
  let!(:user_test) { create(:user_identifier) }
  let!(:local_test) { create(:local) }
  let!(:favorite_test) { create(:favorite_local) }
  let!(:valid_params) do
    {
      'local_id' => local_test.id,
      'user_identifier_id' => user_test.id
    }
  end
  describe 'PUT /favorites/:id' do
    it 'should returns success updated favorite' do
      put "/favorites/#{favorite_test.id}", params: valid_params
      expect(FavoriteLocal.last).to have_attributes valid_params
      expect(response).to have_http_status(200)
    end
    it 'should returns error not updated favorite' do
      valid_params['local_id'] = nil
      put "/favorites/#{favorite_test.id}", params: valid_params
      expect(response).to have_http_status(422)
    end
    it 'should returns error not found favorite' do
      # favorite.id invalid
      put "/favorites/#{favorite_test.id + 1}", params: valid_params
      expect(response).to have_http_status(404)
    end
  end
end

RSpec.describe 'Local API', type: :request do
  let!(:favorite_test) { create(:favorite_local) }
  describe 'DELETE /favorites/:id' do
    it 'should returns success deleted favorite' do
      delete "/favorites/#{favorite_test.id}"
      expect(response).to have_http_status(200)
    end
    it 'should returns error favorite not found' do
      # favorite.id invalid
      delete "/favorites/#{favorite_test.id + 1}"
      expect(response).to have_http_status(404)
    end
  end
end
