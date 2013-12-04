class Answer < ActiveRecord::Base
	def vote(answer)
		@answers = Answer.last
		if answer == 'yes'  
			@answers.answer = 1
		end

		if answer == 'no'  
			@answers.answer = 0
		end
		@answers.save
	end
end
