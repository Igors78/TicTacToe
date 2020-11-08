require './bin/main'
require './lib/logic'
describe Winlines do
  let(:win1) { [1, 1, 1, 0, 0, 0, 0, 0, 0] }
  let(:win2) { [0, 0, 0, 1, 1, 1, 0, 0, 0] }
  let(:win3) { [0, 0, 0, 0, 0, 0, 1, 1, 1] }
  let(:win4) { [1, 0, 0, 1, 0, 0, 1, 0, 0] }
  let(:win5) { [0, 1, 0, 0, 1, 0, 0, 1, 0] }
  let(:win6) { [0, 0, 1, 0, 0, 1, 0, 0, 1] }
  let(:win7) { [0, 0, 1, 0, 1, 0, 1, 0, 0] }
  let(:win8) { [1, 0, 0, 0, 1, 0, 0, 0, 1] }
  let(:playgame) { Game.new }
  context 'When start the game' do
    it 'Should call boarding' do
      expect(playgame.start_game).to receive(:boarding)
    end
    it 'Should call check for winner' do
      expect(playgame.boarding).to receive(:check_for_winner)
    end
  end
end
