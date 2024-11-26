Jekyll::Hooks.register :site, :post_write do |site|
    # Define paths for the original sitemap and duplicates
    sitemap_path = File.join(site.dest, "sitemap.xml")
    sitemap_new_path = File.join(site.dest, "sitemap-new.xml")
    sitemap_v2_path = File.join(site.dest, "sitemap-v2.xml")
  
    # Check if the main sitemap exists
    if File.exist?(sitemap_path)
      # Duplicate the sitemap
      FileUtils.cp(sitemap_path, sitemap_new_path)
      FileUtils.cp(sitemap_path, sitemap_v2_path)
      puts "Duplicated sitemap.xml to sitemap-new.xml and sitemap-v2.xml"
    else
      puts "sitemap.xml not found, skipping duplication."
    end
  end
  