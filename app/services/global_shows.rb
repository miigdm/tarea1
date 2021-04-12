class GlobalShows
    include HTTParty
    base_uri 'https://tarea-1-breaking-bad.herokuapp.com/api'
  
    def initialize
      /@options = { query: { site: service, page: page } }/
      @options = {}
    end
  
    def episodes
      self.class.get("/episodes", @options)
    end
  
    def characters
      self.class.get("/characters", @options)
    end

    def save_characters
        offset = 0
        loop do 
        #for offset in 0..110 do
            if offset < 110
                offset_string = offset.to_s
                response = self.class.get("/characters?limit=10&offset="+offset_string, @options)
                pars_json = response.parsed_response
                pars_json.each do |k|
                    Character.where(:api_id => (k["char_id"]).to_i).first_or_create(api_id: k["char_id"], name: k["name"], occupation: k["occupation"], img: k["img"], status: k["status"], nickname: k["nickname"], appearance: k["appearance"], better_call_saul_appearance: k["better_call_saul_appearance"], portrayed: k["portrayed"], category: k["category"]) 
                end
            end
            offset += 10
            if offset > 110
                break
            end
        end
        
    end

    def save_episodes
        response = self.class.get("/episodes", @options)
        pars_json = response.parsed_response
        pars_json.each do |k|
            Episode.where(:api_id => (k["episode_id"]).to_i).first_or_create(api_id: k["episode_id"], title: k["title"], season: k["season"], episode: k["episode"], air_date: k["air_date"], characters: k["characters"], series: k["series"])
        end
    end

    def save_quotes
        response = self.class.get("/quotes", @options)
        pars_json = response.parsed_response
        pars_json.each do |k|
            Quote.where(:api_id => (k["quote_id"]).to_i).first_or_create(api_id: k["quote_id"], quote: k["quote"], author: k["author"], series: k["series"])
        end
    end
end
  
