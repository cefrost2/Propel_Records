class Customer < ActiveRecord::Base
	INVOICE_OPTIONS = ({'Paper' => "Paper", 'Email' => "Email", 'Both' => "Both", 'None' =>"None"})

	#validates_inclusion_of :invoice_type, :in => INVOICE_OPTIONS
end
