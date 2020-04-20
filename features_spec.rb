require_relative './simple_app.rb'
require_relative './spec_helper.rb'

describe 'velian Bewertungs-Suche', :js=> true do
    it "should search the google for something" do 
        visit 'http://google.com'
        sleep 2
        find(:xpath, "/html/body/div/div[3]/form/div[2]/div[1]/div[1]/div/div[2]/input").set("velian gmbh")
        sleep 2
        find(:xpath, "/html/body/div/div[3]/form/div[2]/div[1]/div[2]/div[2]/div[2]/center/input[1]").click
        sleep 2 
        find(:xpath, "/html/body/div[6]/div[2]/div[9]/div[1]/div[3]/div/div[1]/div/div[1]/div/div[1]/div[2]/div[2]/div[2]/div/div/span[2]/span/a/span").click
        sleep 2
        expect(page).to have_css("html body#gsr.srp.tbo.vasq span g-lightbox div.ynlwjd.oLLmo.u98ib div.AU64fe span div.VFlF2c.review-dialog div.Zd3Ymd.review-dialog-body div.lcorif.fp-w div.fp-w.review-dialog-top div.review-score-container div span.Aq14fc", text: "5,0")
        sleep 2
        find(:xpath, "/html/body/span/g-lightbox/div[2]/div[3]/span/div/div/div/div[2]/div[1]/div/div[2]/div[1]")
        sleep 2
        if find(:xpath, "/html/body/span/g-lightbox/div[2]/div[3]/span/div/div/div/div[2]/div[1]/div/div[2]/div[1]/div[1]/div[3]/div[2]/span/span[1]/span", visible: false)
            puts text
        end
        find(:xpath, "/html/body/span/g-lightbox/div[2]/div[2]").click
        sleep 2
        find(:xpath, "/html/body/div[3]/form/div[2]/div[1]/div[2]/div/div[2]/input").set("test fertig")
    end

end 
