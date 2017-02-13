require 'rails_helper'

describe Commit do
  context 'attributes' do
    it 'responds to sha' do
      commit = Commit.create(sha: '2jdj2a', message: 'im a commit', author: 'jon', timestamp: 'blah')

      expect(commit).to respond_to(:sha)
    end
    it 'responds to message' do
      commit = Commit.create(sha: '2jdj2a', message: 'im a commit', author: 'jon', timestamp: 'blah')

      expect(commit).to respond_to(:message)
    end
    it 'responds to author' do
      commit = Commit.create(sha: '2jdj2a', message: 'im a commit', author: 'jon', timestamp: 'blah')

      expect(commit).to respond_to(:author)
    end
    it 'responds to timestamp' do
      commit = Commit.create(sha: '2jdj2a', message: 'im a commit', author: 'jon', timestamp: 'blah')

      expect(commit).to respond_to(:timestamp)
    end
  end
end
