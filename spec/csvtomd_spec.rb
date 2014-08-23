require "spec_helper"

describe CsvToMd do
  specify "without empty cells" do
    input = fixture("input1.csv").chomp
    expected = fixture("output1.md").chomp
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end

  specify "with empty cells" do
    input = fixture("input2.csv").chomp
    expected = fixture("output2.md").chomp
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end

  specify "with empty string" do
    input = ""
    expected = input
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end

  specify "with single line" do
    input = "hogehoge"
    expected = input
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end

  specify "with nil" do
    input = nil
    expected = nil
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end

  specify "with non-string" do
    input = 10
    expected = nil
    output = CsvToMd.convert(input)
    expect(output).to eq(expected)
  end
  
end
