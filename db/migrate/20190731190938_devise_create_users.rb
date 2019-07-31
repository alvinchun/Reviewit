# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
	def change
		assword_sent_at
	end

	add_index :users, :email, unique: true
	add_index :users, :reset_password_token, unique: true
	# add_index :users, :confirmation_token,   unique: true
	# add_index :users, :unlock_token,         unique: true
end
