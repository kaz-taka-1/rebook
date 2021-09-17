require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end
  describe '新規本登録' do
    context '新規本登録できるとき' do
      it 'book_titleとautor、totalpageが存在すれば登録できる' do
        expect(@book).to be_valid
      end
    end
    context '新規本登録ができないとき' do
      
    end
  end
end
