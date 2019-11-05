require 'oystercard'
describe OysterCard do
 it 'can create an instance of a oystercard' do
   oystercard = OysterCard.new(0)
   expect(oystercard).to be_an_instance_of(OysterCard)
 end

 it 'can check if the oystercard has a balance' do
   oystercard = OysterCard.new(0)
   expect(oystercard.balance).to eq(0)
 end

end
