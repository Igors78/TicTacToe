require_relative '../bin/main'
require_relative '../lib/logic'
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
