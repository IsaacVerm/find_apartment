module SaveHelpers
    
    TEST_DATA_PATH = "../../data/test"
    
    def create_test_data_directory
        Dir.mkdir(TEST_DATA_PATH)
    end
    
    def remove_test_data_directory
        FileUtils.rm_rf(TEST_DATA_PATH)
    end
    
end