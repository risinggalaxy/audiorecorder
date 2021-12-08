//
//  TestRecordingListModulePresenter.swift
//  AudioRecorderTests
//
//  Created by YASSER FARAHI on 04/12/2021.
//

import XCTest
@testable import AudioRecorder

class RecordingListModulePresenterTest: XCTestCase {

    var sut: RecordingLisModulePresenter!
    var mockView: MockedRecordingListModuleView!
    var mockInteractor: MockedRecordingListModuleInteractor!
    var mockWireFrame: MockRecordingListModuleWireFrame!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = RecordingLisModulePresenter()
        mockView = MockedRecordingListModuleView()
        mockInteractor = MockedRecordingListModuleInteractor()
        mockWireFrame = MockRecordingListModuleWireFrame()
        sut.view = mockView
        sut.interactor = mockInteractor
        sut.wireFrame = mockWireFrame
    }

    override func tearDownWithError() throws {
        sut = nil
        mockView = nil
        mockInteractor = nil
        mockWireFrame = nil
        try super.tearDownWithError()
    }
    
    func testRecordingListModulePresenter_WhenBarButtonItemTappedOnRecordingListModuleView_ShouldPresentRecorderView() {
        //Arrange
        let mockRecordingListModuleWireFrame = MockRecordingListModuleWireFrame()
        let view = VIEW()
        //Act
        sut.wireFrame = mockRecordingListModuleWireFrame
        sut.presentRecordingView(module: view)
        //Assert
        XCTAssertTrue(mockRecordingListModuleWireFrame.receivedAndWillPassView)
        XCTAssertEqual(mockRecordingListModuleWireFrame.timesFunctionWasCalled, 1)
    }
    
    func testRecordingListModulePresenter_WhenIndexPathReceived_ShouldConfigureAndReturnCell() {
        //Arrange
        //ACT
        //Assert
    }

}