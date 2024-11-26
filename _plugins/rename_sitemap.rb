Jekyll::Hooks.register :site, :post_write do |site|
  # Define paths for the original sitemap and renamed files
  sitemap_path = File.join(site.dest, "sitemap.xml")
  sitemap_new_path = File.join(site.dest, "sitemap-new.xml")
  sitemap_v2_path = File.join(site.dest, "sitemap-v2.xml")

  # Check if the main sitemap exists
  if File.exist?(sitemap_path)
    # Rename the sitemap to the new file names
    FileUtils.mv(sitemap_path, sitemap_new_path)
    FileUtils.cp(sitemap_new_path, sitemap_v2_path) # Copy from the renamed file to create another version
    puts "Renamed sitemap.xml to sitemap-new.xml and created sitemap-v2.xml"
  else
    puts "sitemap.xml not found, skipping renaming."
  end
end