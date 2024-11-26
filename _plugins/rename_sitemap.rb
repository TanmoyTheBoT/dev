Jekyll::Hooks.register :site, :post_write do |site|
    File.rename(
      File.join(site.dest, "sitemap.xml"),
      File.join(site.dest, "sitemap-new.xml")
    ) if File.exist?(File.join(site.dest, "sitemap.xml"))
  end
  