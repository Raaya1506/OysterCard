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
describe 'top_up' do
 it 'can add a new balance and top up the oystercard ' do
   oystercard = OysterCard.new(0)
   expect{oystercard.top_up(10)}.to change {oystercard.balance}.from(0).to(10)
 end

 it 'should raise an error when balance becomes more than £90' do
 oystercard = OysterCard.new(0)
 LIMIT = 90
 expect{oystercard.top_up(100)}.to raise_error "Maximum balance  of #{LIMIT} exceeded"
end
end

describe 'deduct' do
  it 'can deduct money from the oystercard' do
    oystercard = OysterCard.new(50)
    expect{oystercard.deduct(20)}.to change {oystercard.balance}.from(50).to(30)
  end

describe 'in_journey?' do
  it 'can respond to the method in_journey' do
    oystercard = OysterCard.new(0)
    expect(oystercard).to respond_to(:in_journey?)
  end

  it 'touch_in can change the card state' do
   oystercard = OysterCard.new(0)
   expect{oystercard.touch_in}.to change{oystercard.card_state}.from(false).to(true)
  end

  it 'touch_out can change the method in_journey' do
    oystercard = OysterCard.new(0,true)
    expect{oystercard.touch_out}.to change{oystercard.card_state}.from(true).to(false)
  end
  end
end
