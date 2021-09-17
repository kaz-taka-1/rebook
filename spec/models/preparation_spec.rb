require 'rails_helper'

RSpec.describe Preparation, type: :model do
  before do
    @preparation = FactoryBot.build(:preparation)
  end
  describe '読む前の準備の登録' do
    context'読む前の準備の登録ができないとき' do
      it 'reasonが空では登録できない' do
        @preparation.reason = ''
        @preparation.valid?
        expect(@preparation.errors.full_messages).to include("Reason can't be blank")
      end
      it 'get_abilityが空では登録できない' do
        @preparation.get_ability = ''
        @preparation.valid?
        expect(@preparation.errors.full_messages).to include("Get ability can't be blank")
      end
      it 'statusが空では登録できない' do
        @preparation.status = ''
        @preparation.valid?
        expect(@preparation.errors.full_messages).to include("Status can't be blank")
      end
      it 'prior_knowledgeが空では登録できない' do
        @preparation.prior_knowledge = ''
        @preparation.valid?
        expect(@preparation.errors.full_messages).to include("Prior knowledge can't be blank")
      end
      it 'unknownが空では登録できない' do
        @preparation.unknown = ''
        @preparation.valid?
        expect(@preparation.errors.full_messages).to include("Unknown can't be blank")
      end
    end
  end
end
