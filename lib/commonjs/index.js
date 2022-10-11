"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = exports.JitsiMeetView = void 0;

var _reactNative = require("react-native");

const {
  JitsiMeet
} = _reactNative.NativeModules;
const JitsiMeetView = (0, _reactNative.requireNativeComponent)('JitsiMeetView');
exports.JitsiMeetView = JitsiMeetView;
var _default = JitsiMeet;
exports.default = _default;
//# sourceMappingURL=index.js.map