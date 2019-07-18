require_relative '../lib/app'

describe "crypto_currency method" do
  it "should return #{final_array_crypto[chiffre]} when #{chiffre} != 0 and #{final_array_crypto[chiffre]} != nil" do
    expect(crypto_currency(0)).to eq("Bitcoin")
    expect(crypto_currency(1)).to eq("Ethereum")
    expect(crypto_currency(2)).to eq("XRP")
  end