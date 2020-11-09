require_relative '../bin/main'
require_relative '../lib/logic'
describe Game do
  let(:win1) { [1, 1, 1, 0, 0, 0, 0, 0, 0] }
  let(:win2) { [0, 0, 0, 1, 1, 1, 0, 0, 0] }
  let(:win3) { [0, 0, 0, 0, 0, 0, 1, 1, 1] }
  let(:win4) { [1, 0, 0, 1, 0, 0, 1, 0, 0] }
  let(:win5) { [0, 1, 0, 0, 1, 0, 0, 1, 0] }
  let(:win6) { [0, 0, 1, 0, 0, 1, 0, 0, 1] }
  let(:win7) { [0, 0, 1, 0, 1, 0, 1, 0, 0] }
  let(:win8) { [1, 0, 0, 0, 1, 0, 0, 0, 1] }
end
