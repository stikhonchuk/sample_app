FactoryGirl.define do
	factory :user do
		name	"Sergey Tikhonchuk"
		email	"stikhonchuk@mail.ru"
		password "foobar"
		password_confirmation "foobar"
	end
end