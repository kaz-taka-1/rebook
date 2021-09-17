require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
    @user = FactoryBot.create(:user)
    @book.user_id = @user.id
  end
  describe '新規本登録' do
    context '新規本登録できるとき' do
      it 'book_titleとautor、totalpageが存在すれば登録できる' do
        binding.pry
        expect(@book).to be_valid
        binding.pry
      end
      it 'imageがなくても登録できる' do
        @book.image = ''
        expect(@book).to be_valid
      end
    end
    context '新規本登録ができないとき' do
      it 'book_titleが空では登録できない' do
        @book.book_title = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Book title can't be blank")
      end
      it 'authorが空では登録できない' do
        @book.author = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Author can't be blank")
      end
      it 'が空では登録できない' do
        @book.total_page = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Total page can't be blank")
      end
    end
  end
end

