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

 it 'can add a new balance and top up the oystercard ' do
   oystercard = OysterCard.new(0)
   expect{oystercard.top_up(10)}.to change {oystercard.balance}.from(0).to(10)
 end
end
