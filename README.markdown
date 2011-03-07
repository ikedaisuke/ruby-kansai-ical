Ruby 関西のための iCalendar 形式ファイルをつくる

# Getting started

## 前準備 : icalendar gem をインストールする

http://icalendar.rubyforge.org/

    % gem install icalendar

## ruby-kansai-ical.rb を入手

    % cd YOUR_WORK_DIR
    % git clone https://github.com/IKEGAMIDaisuke/ruby-kansai-ical

# ruby-kansai-ical.rb にイベントを登録する

    # どんどん追加

    cal.event do
      dtstart       DateTime.new(2011, 03, 12, 13), {'TZID' => 'Asia/Tokyo'}
      dtend         DateTime.new(2011, 03, 12, 17), {'TZID' => 'Asia/Tokyo'}
      summary       "Ruby/Rails勉強会@関西 第49回"
      description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?RubyKansai"
      klass         "Public"
    end
    
    cal.event do
      dtstart       DateTime.new(2011, 01, 8, 13), {'TZID' => 'Asia/Tokyo'}
      dtend         DateTime.new(2011, 01, 8, 17), {'TZID' => 'Asia/Tokyo'}
      summary       "Ruby/Rails勉強会@関西 第48回"
      description   "Ruby関西が主催する勉強会です。http://jp.rubyist.net/?RubyKansai"
      klass         "Public"
    end

# カレンダーを作成する

    % ruby ruby-kansai-ical.rb
    % ls ruby-kansai.ics
    ruby-kansai.ics

# 生成したカレンダーを、みんなが参照できるようにする

ruby-kansai.ics を、参加者が見ることのできる場所におく
Ruby 関西の Wiki でしょうか?

かつ、Google カレンダーも準備すると、完璧だと思います

# TODO

もうすこし ruby 知らない人でも、カレンダーを作ることができるように、
適当なフォーマットから `cal.event do` する wrapper が必要でしょうか?

