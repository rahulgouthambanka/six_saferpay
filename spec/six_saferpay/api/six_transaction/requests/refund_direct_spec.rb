require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::RefundDirect do

  subject { SpinningWheel.create('six_transaction_refund_direct') }

  let(:url) { '/Payment/v1/Transaction/RefundDirect' }
  let(:response_class) { SixSaferpay::SixTransaction::RefundDirectResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      refund: subject.refund.to_h,
      payment_means: subject.payment_means.to_h,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction refund direct' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
