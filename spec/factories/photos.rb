FactoryGirl.define do 

		factory :photo do |p|
			p.photo_name "this is a name"
		end

		factory :invalid_event, class: Photo do |p|
			p.photo_name nil

		end
	end

