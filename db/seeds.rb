# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Section.create([{name: 'main', title: 'Главная'},
                {name: 'samples', title: 'Примеры'},
                {name: 'price', title: 'Цены'},
                {name: 'contacts', title: 'Контакты'},
                {name: 'drawings', title: 'Скачать чертежи!'}
               ])

TextPage.create([
                {name: 'main', section_id: Section.find_by_name('main').id},
                {name: 'samples', section_id: Section.find_by_name('samples').id},
                {name: 'price', section_id: Section.find_by_name('price').id},
                {name: 'contacts', section_id: Section.find_by_name('contacts').id},
                {name: 'drawings', section_id: Section.find_by_name('drawings').id},
                ])

TextPage.find_by_name('main') do |t|
  t.body =<<-END
Выполню чертежи в AutoCad любой сложности (2D, 3D).
Дипломы, курсовые, записки. А также рабочие чертежи реальных проектов.
Недорого, качественно и быстро. Цена от 1000 р за лист А1, в зависимости от сложности.
Передача исходных материалов при личной встрече или по eMail.
END
  t.save
end


TextPage.all.each do |t|
  if(t.body.nil? || t.body.empty?)
    t.body = (t.section.title.to_s + ' ') * 5
    t.save
  end
end
