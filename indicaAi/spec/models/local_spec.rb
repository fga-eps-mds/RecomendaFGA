require 'rails_helper'

RSpec.describe Local, type: :model do
  let!(:local) { create(:local) }
  let!(:favorite_locals) { create_list(:favorite_local, 10, local: local) }
  it { should have_many(:favorite_locals).dependent(:destroy) }
  context 'Validate of UserIdentifier' do
    it { should validate_presence_of(:name) }
    it 'local valid' do
      local = create(:local)
      expect(local.valid?).to be_truthy
    end

    it 'local invalid' do
      local.name = ''
      expect(local.valid?).to be_falsey
    end
  end

  context 'Return favorites by locals' do
    it 'should return favorite locals related with local' do
      result = Local.find_favorites(local.id)
      assert result == favorite_locals
    end

    it 'should not return favorite locals related with local' do
      local2 = create(:local)
      result2 = Local.find_favorites(local2.id)
      assert result2 != favorite_locals
    end
  end
end
