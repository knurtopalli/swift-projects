//
//  Core_Location_ve_Map_Kit_KullanimiUITestsLaunchTests.swift
//  Core Location ve Map Kit KullanimiUITests
//
//  Created by Nur Topalli on 6.11.2024.
//

import XCTest

final class Core_Location_ve_Map_Kit_KullanimiUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
