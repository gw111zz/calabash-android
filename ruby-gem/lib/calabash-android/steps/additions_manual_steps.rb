Then /^I compare the current screen with the reference image "([^\"]*)" manually$/ do |name|
<<<<<<< HEAD
=======
    # TODO: once test artifacts directory is configurable, the image location
    # will need to be either a fully qualified path somewhere (webserver?) or
    # be relative to the output HTML file
>>>>>>> 9eac76c2c9b26fd69a391c1db72a8580e14458f5
    raise Exception, "Reference image not found: #{name}" if !File.exists?(name)

    # Assuming that the reference images are stored alongside the Features:
    # Archive the reference images so that output formatters can see them
    # Keep the same directory structure when archiving reference images as 
    # in the original features directory
    dest = File.join(ENV["TEST_ARTIFACTS_DIR"], File.dirname(name))
    log "Copy reference image from #{name} to #{dest}"
    log "Dirname: #{File.dirname(name)}"
    FileUtils.mkdir_p(dest) if !Dir.exists?(dest)
    FileUtils.cp(name, dest)
    embed(name, 'image/png', "Reference image: #{name}")
end

Then /^I manually (.*)$/ do |action|
    # Do nothing
end
