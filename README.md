# DisableMenuCommandTest

A SwiftUI macOS app that explores disabling menu commands.

Specifically, a `.disabled` modifier is attached to the Button in a CommandGroup and is set/unset by an AppStorage dynamic property, but this has no effect on whether or not the menu command is enabled or disabled; the menu command observes whatever value of the property was when the app was launched, and then ignores updates to the property while the app is running.

Submitted feedback to Apple (FB8918303).
