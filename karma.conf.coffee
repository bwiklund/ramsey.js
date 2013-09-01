module.exports = (config) ->
  config.set
    
    basePath: ""
    
    frameworks: ["jasmine"]

    preprocessors:
      "ramsey.coffee": ["coffee"]
      "test/**/*.coffee": ["coffee"]

    coffeePreprocessor:
      options:
        bare: false
        sourceMap: false

    files: ["ramsey.coffee", "test/**/*.coffee"]
    
    exclude: []
    
    reporters: ["progress"]
    
    port: 9876
    
    colors: true
    
    logLevel: config.LOG_INFO
    
    autoWatch: true
    
    browsers: ["Chrome"]
    
    captureTimeout: 60000
    
    singleRun: false

