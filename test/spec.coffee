describe "version", ->

  it "is set", ->
    ramsey = new Ramsey()
    expect( ramsey.version ).toBe( "0.0.1" )


describe "scope inspector", ->

  afterEach ->
    delete window.foo

  it "can detect a clean global scope", ->
    ramsey = new Ramsey()
    expect( Object.keys( ramsey.globalPollution ) ).toEqual([])

  it "can detect a dirty global scope", ->
    window.foo = 'bar'
    ramsey = new Ramsey()
    expect( Object.keys( ramsey.globalPollution ) ).toEqual(['foo'])

