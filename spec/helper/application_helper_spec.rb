# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#page_title' do
    context '@title が指定されていない' do
      it 'デフォルトが返されること' do
        stub_const('ApplicationHelper::APP_NAME', 'Rails Sample')
        expect(helper.page_title).to eq('Rails Sample')
      end
    end

    context '@title が指定されている' do
      before do
        assign(:title, 'hoge')
      end
      it 'タイトルに @title が入った文字列が返されること' do
        stub_const('ApplicationHelper::APP_NAME', 'Rails Sample')
        expect(helper.page_title).to eq('Rails Sample | hoge')
      end
    end
  end
end
