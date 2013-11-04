ramsey = window.ramsey


describe "version", ->

  it "is set", ->
    expect( ramsey.version ).toBe( "0.0.1" )


describe "scope inspector", ->

  afterEach ->
    delete window.foo

  it "can detect a clean global scope", ->
    expect( Object.keys( ramsey.berate() ) ).toEqual(['ramsey'])

  it "can return an array of strings", ->
    expect( ramsey.berateAsStrings() ).toEqual(['ramsey'])

  it "can detect a dirty global scope", ->
    window.foo = 'bar'
    expect( Object.keys( ramsey.berate() ) ).toEqual(['ramsey','foo'])




