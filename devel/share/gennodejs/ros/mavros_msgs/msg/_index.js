
"use strict";

let ActuatorControl = require('./ActuatorControl.js');
let Altitude = require('./Altitude.js');
let HilSensor = require('./HilSensor.js');
let Thrust = require('./Thrust.js');
let RCIn = require('./RCIn.js');
let StatusText = require('./StatusText.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let PositionTarget = require('./PositionTarget.js');
let CommandCode = require('./CommandCode.js');
let Vibration = require('./Vibration.js');
let ESCInfo = require('./ESCInfo.js');
let GPSRTK = require('./GPSRTK.js');
let Mavlink = require('./Mavlink.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let RTKBaseline = require('./RTKBaseline.js');
let ParamValue = require('./ParamValue.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let Trajectory = require('./Trajectory.js');
let WaypointList = require('./WaypointList.js');
let HilControls = require('./HilControls.js');
let DebugValue = require('./DebugValue.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let TerrainReport = require('./TerrainReport.js');
let RCOut = require('./RCOut.js');
let BatteryStatus = require('./BatteryStatus.js');
let GPSINPUT = require('./GPSINPUT.js');
let GPSRAW = require('./GPSRAW.js');
let Waypoint = require('./Waypoint.js');
let RadioStatus = require('./RadioStatus.js');
let State = require('./State.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let ESCStatus = require('./ESCStatus.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let HilGPS = require('./HilGPS.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let Param = require('./Param.js');
let ExtendedState = require('./ExtendedState.js');
let VehicleInfo = require('./VehicleInfo.js');
let ManualControl = require('./ManualControl.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let FileEntry = require('./FileEntry.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let LogEntry = require('./LogEntry.js');
let LandingTarget = require('./LandingTarget.js');
let WaypointReached = require('./WaypointReached.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let LogData = require('./LogData.js');
let MountControl = require('./MountControl.js');
let VFR_HUD = require('./VFR_HUD.js');
let RTCM = require('./RTCM.js');
let Tunnel = require('./Tunnel.js');
let HomePosition = require('./HomePosition.js');

module.exports = {
  ActuatorControl: ActuatorControl,
  Altitude: Altitude,
  HilSensor: HilSensor,
  Thrust: Thrust,
  RCIn: RCIn,
  StatusText: StatusText,
  AttitudeTarget: AttitudeTarget,
  PositionTarget: PositionTarget,
  CommandCode: CommandCode,
  Vibration: Vibration,
  ESCInfo: ESCInfo,
  GPSRTK: GPSRTK,
  Mavlink: Mavlink,
  ADSBVehicle: ADSBVehicle,
  HilStateQuaternion: HilStateQuaternion,
  RTKBaseline: RTKBaseline,
  ParamValue: ParamValue,
  OverrideRCIn: OverrideRCIn,
  Trajectory: Trajectory,
  WaypointList: WaypointList,
  HilControls: HilControls,
  DebugValue: DebugValue,
  TimesyncStatus: TimesyncStatus,
  TerrainReport: TerrainReport,
  RCOut: RCOut,
  BatteryStatus: BatteryStatus,
  GPSINPUT: GPSINPUT,
  GPSRAW: GPSRAW,
  Waypoint: Waypoint,
  RadioStatus: RadioStatus,
  State: State,
  PlayTuneV2: PlayTuneV2,
  ESCStatus: ESCStatus,
  OpticalFlowRad: OpticalFlowRad,
  HilGPS: HilGPS,
  ESCStatusItem: ESCStatusItem,
  Param: Param,
  ExtendedState: ExtendedState,
  VehicleInfo: VehicleInfo,
  ManualControl: ManualControl,
  OnboardComputerStatus: OnboardComputerStatus,
  ESCInfoItem: ESCInfoItem,
  FileEntry: FileEntry,
  ESCTelemetryItem: ESCTelemetryItem,
  EstimatorStatus: EstimatorStatus,
  CameraImageCaptured: CameraImageCaptured,
  MagnetometerReporter: MagnetometerReporter,
  NavControllerOutput: NavControllerOutput,
  LogEntry: LogEntry,
  LandingTarget: LandingTarget,
  WaypointReached: WaypointReached,
  HilActuatorControls: HilActuatorControls,
  GlobalPositionTarget: GlobalPositionTarget,
  CamIMUStamp: CamIMUStamp,
  CompanionProcessStatus: CompanionProcessStatus,
  ESCTelemetry: ESCTelemetry,
  WheelOdomStamped: WheelOdomStamped,
  LogData: LogData,
  MountControl: MountControl,
  VFR_HUD: VFR_HUD,
  RTCM: RTCM,
  Tunnel: Tunnel,
  HomePosition: HomePosition,
};
