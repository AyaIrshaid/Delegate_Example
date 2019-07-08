# Example on delegates

Update main view when mode selected from settings menu.

Notes:

Outside 'SettingsSideView', create custom protocol.

In 'SettingsSideView':
- Define a variable of type custom protocol.
- Call the protocol method when a mode is selected.

In main view:
- Inherit from custom protocol.
- Set delegate of 'SettingsSideView' to self.
- Implement the custom protocol method, in which update the main view based on the selected mode.
