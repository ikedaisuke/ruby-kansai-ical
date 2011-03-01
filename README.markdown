Ruby 関西のための iCalendar 形式ファイルをつくる

# Getting started

## ruby-kansai-ical.rb を入手

    % cd YOUR_WORK_DIR
    % git clone https://github.com/IKEGAMIDaisuke/ruby-kansai-ical

## icalendar gem をインストールする

http://icalendar.rubyforge.org/

    % gem install icalendar

# ruby-kansai-ical.rb にイベントを登録する

    # どんどん追加

    cal.event do
      dtstart       DateTime.new(2011, 03, 12, 13), {'TZID' => 'Asia/Tokyo'}
      dtend         DateTime.new(2005, 03, 12, 17), {'TZID' => 'Asia/Tokyo'}
      summary       "Ruby/Rails勉強会@関西"
      description   "関西での Ruby に関するイベントの主体となるコミュニティ"
      klass         "Public"
    end
    
    cal.event do
      dtstart       DateTime.new(2011, 01, 8, 13), {'TZID' => 'Asia/Tokyo'}
      dtend         DateTime.new(2005, 01, 8, 17), {'TZID' => 'Asia/Tokyo'}
      summary       "Ruby/Rails勉強会@関西 第48回"
      description   "関西での Ruby に関するイベントの主体となるコミュニティ"
      klass         "Public"
    end

# TODO

もうすこし ruby 知らない人でも、カレンダーを作ることができるように、
適当なフォーマットから `cal.event do` する wrapper が必要でしょうか


