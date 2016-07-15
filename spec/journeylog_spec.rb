require 'journeylog'

describe JourneyLog do
  let(:entry_station){double :station}
  describe '#start' do
    it "start a new journey with an entry station" do
      subject.start(entry_station)
      expect(subject.journey_class.in_journey?).to be true
    end
  end

  describe "#current_journey" do
    it "returns an incomplete/compelte journey" do
      subject.start(entry_station)
      expect(subject.send(:current_journey)).to eq subject.journey_class.journey
    end
  end
  # describe '#finish' do
  #   before do
  #     subject.start_journey entry_station
  #     subject.end_journey exit_station
  #   end
  #   it 'changes in_journey to false' do
  #     expect(subject).not_to be_in_journey
  #   end
  #
  #   it "Stores the exit station" do
  #     expect(subject.journey[:end]).to be exit_station
  #   end
  # end
end
