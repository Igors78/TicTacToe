require_relative '../bin/main'
require_relative '../lib/logic'
describe Winlines do
  let(:win1) { [1, 1, 1, 3, 4, 5, 6, 7, 8] }
  let(:win2) { [2, 3, 4, 1, 1, 1, 5, 6, 7] }
  let(:win3) { [2, 3, 4, 5, 6, 7, 1, 1, 1] }
  let(:win4) { [1, 2, 3, 1, 4, 5, 1, 6, 7] }
  let(:win5) { [6, 1, 7, 8, 1, 6, 8, 1, 0] }
  let(:win6) { [1, 2, 1, 3, 4, 1, 5, 6, 1] }
  let(:win7) { [3, 4, 1, 5, 1, 6, 1, 7, 8] }
  let(:win8) { [1, 3, 4, 5, 1, 6, 7, 8, 1] }
  let(:nowin1) { [1, 0, 1, 3, 4, 5, 6, 7, 8] }
  let(:nowin2) { [2, 3, 4, 1, 0, 1, 5, 6, 7] }
  let(:nowin3) { [2, 3, 4, 5, 6, 7, 1, 0, 1] }
  let(:nowin4) { [1, 2, 3, 1, 4, 5, 0, 6, 7] }
  let(:nowin5) { [6, 1, 7, 8, 0, 6, 8, 1, 0] }
  let(:nowin6) { [1, 2, 1, 3, 4, 0, 5, 6, 1] }
  let(:nowin7) { [3, 4, 1, 5, 1, 6, 0, 7, 8] }
  let(:nowin8) { [1, 3, 4, 5, 1, 6, 7, 8, 0] }

  describe '#check_for_winner' do
    context 'When combo is winning' do
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win1)
      end

      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win2)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win3)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win4)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win5)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win6)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win7)
      end
      it 'should call #who_won when winning combination' do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win8)
      end
    end
    context 'When combo is not winning' do
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin1)
      end

      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin2)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin3)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin4)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin5)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin6)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin7)
      end
      it 'should not call #who_won when combination is not winning' do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin8)
      end
    end
  end
end
