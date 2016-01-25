require 'net/https'
require 'json'
require 'yaml'
require 'uri'

SERVICE_PREFIX = '/services/v5'
ACTIVITY_LIMIT = 50
TOKEN=`pass Token/pivotal`.strip # The API-token to access pivotaltracker.
PROJECT_ID=`pass Other/pivotalBlId`.strip
ME='PE'

def init_http_req
  http = Net::HTTP.new('www.pivotaltracker.com', 443)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  http
end

def get_json_req(path, params: {})
  http = init_http_req
  request = Net::HTTP::Get.new("#{path}?#{URI.encode_www_form(params)}")
  request['X-TrackerToken'] = TOKEN
  yield(request) if block_given?
  response = http.request(request)
  data = JSON.parse(response.body, symbolize_names: true)
end

def last_started_story
  path = "#{SERVICE_PREFIX}/my/activity"
  data = get_json_req(path, params: {limit: ACTIVITY_LIMIT})

  activity = data.select { |d| d[:highlight] == 'started' }.first
  story = activity[:primary_resources].select { |r| r[:kind] == 'story'}.first
end

def project_stories(filter: '')
  path = "#{SERVICE_PREFIX}/projects/#{PROJECT_ID}/stories"
  get_json_req(path, params: {filter: filter})
end

func = ARGV[0].to_sym

case func
  when :last_started_story
    story = last_started_story
    if story
      print (ARGV[1]) ? story[ARGV[1].to_sym] : story.to_json
    else
      print '---'
    end
  when :my_open_stories
    stories = project_stories(filter: "owner:#{ME} state:started")
    print stories.size
  when :my_done_stories
    stories = project_stories(filter: "owner:#{ME} state:finished")
    print stories.size
end
