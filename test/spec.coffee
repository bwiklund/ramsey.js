ramsey = new Ramsey()

describe "version", ->
  it "is set", ->
    expect( ramsey.version ).toBe( "0.0.1" )

describe "scope inspector", ->
  it "can test how polluted global scope is", ->
    expect( Object.keys( ramsey.globalPollution ) ).toEqual([])
