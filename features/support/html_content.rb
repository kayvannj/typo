module HTMLContentHelper
  # Maps a name to a html. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def contains_html(text)
    case text

    when /^merge form$/
      '#merge_id'
    end
  end
end

World(HTMLContentHelper)
