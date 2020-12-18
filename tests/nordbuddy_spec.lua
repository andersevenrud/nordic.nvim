local nordbuddy = require'nordbuddy'

describe('colorscheme', function()
  it("should not error", function()
    nordbuddy.setup()
    assert.has_no.errors(nordbuddy.colors)
  end)
end)
