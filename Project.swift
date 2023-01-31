import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin


// MARK: - Project

let localHelper = LocalHelper(name: "MyPlugin")

let project = Project.app(
  name: "SwiftUIAnimations",
  platform: .iOS,
  additionalTargets: []
)
