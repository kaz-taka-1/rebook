require 'rails_helper'

RSpec.describe Preparation, type: :model do
  before do
    @preparation = FactoryBot.build(:preparation)
    @book = FactoryBot.build(:book)
    @preparation.book_id=@book.id
  end

end
