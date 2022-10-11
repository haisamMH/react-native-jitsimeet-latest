import { NativeModules, requireNativeComponent } from 'react-native';
const {
  JitsiMeet
} = NativeModules;
const JitsiMeetView = requireNativeComponent('JitsiMeetView');
export { JitsiMeetView };
export default JitsiMeet;
//# sourceMappingURL=index.js.map