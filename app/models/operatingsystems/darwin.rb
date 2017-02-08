class Darwin < Operatingsystem
  PXEFILES = {}

  def available_loaders
    ["iPXE"]
  end

  def template_kinds
    ["Darwin"]
  end

  def pxe_type
    "darwin"
  end

  def self.shorten_description(description)
    return "" if description.blank?
    s = description.dup
    s.gsub!('Mac ', '')
    s.gsub!('OS X', 'OSX')
    s.squeeze! ' '
    s.strip!
    s.blank? ? description : s
  end

  def display_family
    "Darwin"
  end
end
