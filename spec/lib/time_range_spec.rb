require 'rails_helper'

RSpec.describe TimeRange do
  let(:start_date) { '2015-10-21'.to_date }
  let(:time_range_1) { TimeRange.new(start_date, start_date + 1.year)}
  let(:time_range_2) { TimeRange.new(start_date, start_date + 2.years + 1.month)}

  context '.period_in_words' do
    context 'singular' do
      it{ expect(time_range_1.period_in_words).to eq '1 Jahr und 1 Monat' }
    end

    context 'plural' do
      it{ expect(time_range_2.period_in_words).to eq '2 Jahre und 2 Monate' }
    end
  end

  context '.period_as_dates' do
    it{ expect(time_range_1.period_as_dates).to eq '10/2015 - 10/2016' }
  end

  context '+' do
    let(:time_range_sum){ time_range_1 + time_range_2 }
    it{ expect(time_range_sum.send(:years)).to eq 3 }
    it{ expect(time_range_sum.send(:months)).to eq 3 }
  end
end
