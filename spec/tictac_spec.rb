require_relative '../bin/main.rb'
require_relative '../lib/logic.rb'

describe Game do
  let(:win1) { [1, 1, 1, 3, 4, 5, 6, 7, 8] }
  let(:win2) { [2, 3, 4, 1, 1, 1, 5, 6, 7] }
  let(:win3) { [2, 3, 4, 5, 6, 7, 1, 1, 1] }
  let(:win4) { [1, 2, 3, 1, 4, 5, 1, 6, 7] }
  let(:win5) { [6, 1, 7, 8, 1, 6, 8, 1, 0] }
  let(:win6) { [1, 2, 1, 3, 4, 1, 5, 6, 1] }
  let(:win7) { [3, 4, 1, 5, 1, 6, 1, 7, 8] }
  let(:win8) { [1, 3, 4, 5, 1, 6, 7, 8, 1] }
end

RSpec.describe Board do
  let!(:board) { Board.new }
  let!(:tie) do
    Board.new(
      1 => 'X', 2 => 'X', 3 => 'O',
      4 => 'O', 5 => 'X', 6 => 'X',
      7 => 'X', 8 => '0', 9 => 'O'
    )
  end
  
  context 'check for tie' do
    describe '#tie' do
      it 'should return tie if no win' do
        dbl = double(board)
        allow(dbl).to receive(:tie).and_return('Game is tie')
      end
    end
  end
  context 'check for display' do
    describe '#display' do
      it 'check if two strings are equal' do
        dbl = double(board)
        allow(dbl).to receive(:display).and_return(@grid)
      end
    end
  end
end