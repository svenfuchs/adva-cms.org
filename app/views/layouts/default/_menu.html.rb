class Layouts::Default::Menu < Adva::View::Menu
  include do
    def to_html
      ul(:id => :menu) do
        site.sections.roots.each do |section|
          item(section.name, url_for(section))
        end
      end
    end
  end
end

