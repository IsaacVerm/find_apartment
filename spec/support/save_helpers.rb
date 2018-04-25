module SaveHelpers
    
    def create_test_data_directory
        Dir.mkdir(Save::TEST_DATA_PATH)
    end
    
    def remove_test_data_directory
        FileUtils.rm_rf(Save::TEST_DATA_PATH)
    end
    
    def test_data_directory_exists?
        Dir.exist?(Save::TEST_DATA_PATH)
    end
    
    def listings_exists?
        File.exist?(Save::TEST_DATA_PATH + "listings.csv")
    end
    
    
    
end