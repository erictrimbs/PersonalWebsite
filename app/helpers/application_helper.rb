module ApplicationHelper

    # Returns full title on per-page basis
    def full_title(page_title = '')
        base_title = 'Eric Trimble'
        if page_title.empty?
            return base_title
        else
            return page_title + ' | ' + base_title
        end
    end

end
