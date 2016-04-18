require "./spec_helper"

describe LearningCrystal::NumberSplitter do
  context "split_hours" do
    it "split 10 by 5" do    
      total = LearningCrystal::NumberSplitter.split_numbers(10, 5)
      total.should eq [5, 5]
    end  
    it "split 15 by 3" do    
      total = LearningCrystal::NumberSplitter.split_numbers(15, 3)
      total.should eq [3, 3, 3, 3, 3]
    end
    it "split 16 by 3" do    
      total = LearningCrystal::NumberSplitter.split_numbers(16, 3)
      total.should eq [3, 3, 3, 3, 3, 1]
    end
    it "split 17 by 3" do    
      total = LearningCrystal::NumberSplitter.split_numbers(17, 3)
      total.should eq [3, 3, 3, 3, 3, 2]
    end
  end
end