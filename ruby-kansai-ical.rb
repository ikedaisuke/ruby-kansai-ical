# -*- coding: utf-8 -*-
require 'rubygems'
require 'icalendar'
require 'kconv'

# Setting

standard_component = Icalendar::Component.new('STANDARD')
standard_component.custom_property('dtstart', '19700101T000000')
standard_component.custom_property('tzoffsetfrom', '+0900')
standard_component.custom_property('tzoffsetto', '+0900')
standard_component.custom_property('tzname', 'JST')

vtimezone_component = Icalendar::Component.new('VTIMEZONE')
vtimezone_component.custom_property('tzid', 'Asia/Tokyo')
vtimezone_component.add(standard_component)

# Create events

cal = Icalendar::Calendar.new

cal.event do
  dtstart       DateTime.new(2011, 03, 12, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 03, 12, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第49回"
  description   "関西での Ruby に関するイベントの主体となるコミュニティ"
  klass         "Public"
end

cal.event do
  dtstart       DateTime.new(2011, 01, 8, 13), {'TZID' => 'Asia/Tokyo'}
  dtend         DateTime.new(2011, 01, 8, 17), {'TZID' => 'Asia/Tokyo'}
  summary       "Ruby/Rails勉強会@関西 第48回"
  description   "関西での Ruby に関するイベントの主体となるコミュニティ"
  klass         "Public"
end

cal.add(vtimezone_component)

File.open("sample.ics", "w+b") { |f|
    f.write(cal.to_ical.toutf8)
}

