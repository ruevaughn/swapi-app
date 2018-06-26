# If any of the enabled .rspec files get overwritten etc these should catch depending
# what level they are overwritten at. Just a simple check that *could* help.

RSpec.describe "color_enabled?" do
  context "when set with RSpec.configure" do
    it "is true" do
      expect(RSpec.configuration).to be_color_enabled
    end
  end
end

RSpec.describe "formatter set in custom options file" do
  it "sets formatter" do
    expect(RSpec.configuration.formatters.first).
      to be_a(RSpec::Core::Formatters::DocumentationFormatter)
  end
end
