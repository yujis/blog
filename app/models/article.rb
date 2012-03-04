class Article < Content
  def self.archives
    date_func = "extract(year from created_at) as year,extract(month from created_at) as month"

    article_counts = Content.find_by_sql(["select count(*) as count, #{date_func} from contents where type='Article' and created_at < ? group by year,month order by year desc,month desc limit ? ",Time.now,count.to_i])

    archives = article_counts.map do |entry|
      {
        :name => Date::MONTHNAMES[entry.month.to_i] + " #{entry.year}",
        :month => entry.month.to_i,
        :year => entry.year.to_i,
        :article_count => entry.count
      }
    end
    archives
  end
end
