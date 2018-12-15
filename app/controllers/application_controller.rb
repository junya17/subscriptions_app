# frozen_string_literal: true

class ApplicationController < ActionController::Base
	def success(name)
		name + 'の登録に成功しました。'
	end

	def update(name)
		name + 'の更新に成功しました。'
	end

	def destroy(name)
		name + 'の削除に成功しました。'
	end

end
