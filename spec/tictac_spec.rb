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

  describe "#check_for_winner" do
    context "When combo is winning" do
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win1)
      end

      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win2)
      end
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win3)
      end
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win4)
      end
    end
    context "Winning combo" do
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win5)
      end
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win6)
      end
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win7)
      end
      it "should call #who_won when winning combination" do
        testgame = Game.new
        expect(testgame).to receive(:who_won).with(any_args)
        testgame.check_for_winner(win8)
      end
    end
    context "When combo is not winning" do
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin1)
      end

      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin2)
      end
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin3)
      end
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin4)
      end
    end
    context "Not winning combo" do
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin5)
      end
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin6)
      end
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin7)
      end
      it "should not call #who_won when combination is not winning" do
        testgame = Game.new
        expect(testgame).not_to receive(:who_won).with(any_args)
        testgame.check_for_winner(nowin8)
      end
    end
  end
end

RSpec.describe Board do
  let!(:board) { Board.new }
  let!(:tie) do
    Board.new(
      1 => "X", 2 => "X", 3 => "O",
      4 => "O", 5 => "X", 6 => "X",
      7 => "X", 8 => "0", 9 => "O"
    )
  end

  context "check for tie" do
    describe "#tie" do
      it "should return tie if no win" do
        dbl = double(board)
        allow(dbl).to receive(:tie).and_return("It's a tie")
      end
    end
  end
  context "check for check_fill" do
    describe "#check_fill" do
      it "check if two strings are equal" do
        dbl = double(board)
        allow(dbl).to receive(:check_fill).and_return("trings are equal")
      end
    end
  end

  context "check for check_entry" do
    describe "#check_entry" do
      it "check if two players have invalid move" do
        dbl = double(board)
        allow(dbl).to receive(:check_entry).and_return("invalid move")
      end
    end
  end
  context "check for fill_the_board" do
    describe "#fill_the_board" do
      it "check if two players have filled the board" do
        dbl = double(board)
        allow(dbl).to receive(:fill_the_board).and_return("The board is filled out")
      end
    end
  end
end

describe Game do
  describe '#who_won' do
    context 'who won' do
      it 'checks who won' do
        test = Game.new
        expect(test).to receive(:print_winner).with(any_args)
        test.who_won("X")
      end

      it 'checks who won' do
        test = Game.new
        expect(test).to receive(:print_winner).with(any_args)
        test.who_won("O")
      end

      it 'checks who won' do
        test = Game.new
        expect(test).not_to receive(:print_winner).with(any_args)
        test.who_won(" ")
      end
    end
  end
  describe 'check_fill' do
    context 'When block is given' do
      it 'Should return original array' do
        expect(test_arr.my_each { |n| n + 1 }).to eq(test_arr)
      end
    end
  end
end
