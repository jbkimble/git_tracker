require 'rails_helper'

describe 'github webhook endpoint' do
  context 'POST a payload' do
    it 'recieves commit data' do
      data = {"head_commit": {
          "id": "0d1a26e67d8f5eaf1f6ba5c57fc3c7d91ac0fd1c",
          "tree_id": "f9d2a07e9488b91af2641b26b9407fe22a451433",
           "distinct": true,
           "message": "Update README.md",
           "timestamp": "2015-05-05T19:40:15-04:00",
           "url": "https://github.com/baxterthehacker/public-repo/commit/0d1a26e67d8f5eaf1f6ba5c57fc3c7d91ac0fd1c",
           "author": {
             "name": "baxterthehacker",
             "email": "baxterthehacker@users.noreply.github.com",
             "username": "baxterthehacker"
            },
           "committer": {
             "name": "baxterthehacker",
             "email": "baxterthehacker@users.noreply.github.com",
             "username": "baxterthehacker"
           }
            }}

      json_data = data.to_json
      post "/api/v1/commits", json_data, {'CONTENT_TYPE' => 'application/json'}
      # reponse = JSON.parse(response.body)
      expect(response).to be_success
    end
  end
end
