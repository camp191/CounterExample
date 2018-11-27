# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

platform :ios, '9.0'
workspace 'CounterExample.xcworkspace'

target 'CounterExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CounterExample
  pod 'ReSwift'

  target 'CounterExampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CounterExampleUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'CounterUI' do
    project 'CounterUI/CounterUI'
    use_frameworks!
    pod 'ReSwift'
end

target 'AppState' do
    project 'AppState/AppState'
    use_frameworks!
    pod 'ReSwift'
end
