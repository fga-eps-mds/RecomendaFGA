require 'rails_helper'

RSpec.describe LocalsController, type: :controller do
  it { should route(:get, '/locals').to(action: :index) }
  it 'should return a JSON object' do
    get :index, format: :JSON
    expect(response).to be_success
  end

  context 'GET #search_locals' do
    let!(:local) { create(:local, name: 'Xoxo') }
    it 'should route locals/name/x to the corresponding action' do
      should route(:get, '/locals/name/x').to(action: :search_locals, name: 'x')
    end
  end

  it { should route(:get, '/local/1').to(action: :show_place, local_id: '1') }
end
