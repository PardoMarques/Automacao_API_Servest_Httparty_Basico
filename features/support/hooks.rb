Before do 
  @verbos_basicos_payload = VerbosBasicosPayload.new
end

Before('@skip') do
  skip_this_scenario
end

# After do |scenario|
# end
