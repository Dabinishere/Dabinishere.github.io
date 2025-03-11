require 'jekyll-last-modified-at'

module Jekyll
  module CreationDate
    def created_at(page_or_post)
      git_cmd = "git log --format='%ad' --date=iso --reverse #{page_or_post.path} | head -1"
      creation_date = %x[ #{git_cmd} ].strip
      
      # Fallback to file creation time if git history not available
      if creation_date.empty?
        creation_date = File.ctime(page_or_post.path).iso8601
      end
      
      creation_date
    end
  end
end

Liquid::Template.register_filter(Jekyll::CreationDate) 