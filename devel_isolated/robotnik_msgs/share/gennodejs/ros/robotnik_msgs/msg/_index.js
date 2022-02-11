
"use strict";

let encoders = require('./encoders.js');
let BoolArray = require('./BoolArray.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let AlarmSensor = require('./AlarmSensor.js');
let PantiltStatus = require('./PantiltStatus.js');
let alarmmonitor = require('./alarmmonitor.js');
let LaserMode = require('./LaserMode.js');
let inputs_outputs = require('./inputs_outputs.js');
let Data = require('./Data.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let Register = require('./Register.js');
let OdomCalibrationStatus = require('./OdomCalibrationStatus.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let PresenceSensor = require('./PresenceSensor.js');
let PresenceSensorArray = require('./PresenceSensorArray.js');
let StringStamped = require('./StringStamped.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let PantiltStatusStamped = require('./PantiltStatusStamped.js');
let ArmStatus = require('./ArmStatus.js');
let Pose2DArray = require('./Pose2DArray.js');
let BatteryStatus = require('./BatteryStatus.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let State = require('./State.js');
let SubState = require('./SubState.js');
let MotorStatus = require('./MotorStatus.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let named_input_output = require('./named_input_output.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let OdomManualCalibrationStatusStamped = require('./OdomManualCalibrationStatusStamped.js');
let MotorCurrent = require('./MotorCurrent.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let MotorPID = require('./MotorPID.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let StringArray = require('./StringArray.js');
let InverterStatus = require('./InverterStatus.js');
let ElevatorAction = require('./ElevatorAction.js');
let LaserStatus = require('./LaserStatus.js');
let ReturnMessage = require('./ReturnMessage.js');
let Interfaces = require('./Interfaces.js');
let Axis = require('./Axis.js');
let Registers = require('./Registers.js');
let OdomCalibrationStatusStamped = require('./OdomCalibrationStatusStamped.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let Alarms = require('./Alarms.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let QueryAlarm = require('./QueryAlarm.js');
let MotorsStatus = require('./MotorsStatus.js');
let ptz = require('./ptz.js');
let OdomManualCalibrationStatus = require('./OdomManualCalibrationStatus.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorResult = require('./SetElevatorResult.js');

module.exports = {
  encoders: encoders,
  BoolArray: BoolArray,
  MotorHeadingOffset: MotorHeadingOffset,
  AlarmSensor: AlarmSensor,
  PantiltStatus: PantiltStatus,
  alarmmonitor: alarmmonitor,
  LaserMode: LaserMode,
  inputs_outputs: inputs_outputs,
  Data: Data,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  Register: Register,
  OdomCalibrationStatus: OdomCalibrationStatus,
  Pose2DStamped: Pose2DStamped,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  PresenceSensor: PresenceSensor,
  PresenceSensorArray: PresenceSensorArray,
  StringStamped: StringStamped,
  alarmsmonitor: alarmsmonitor,
  PantiltStatusStamped: PantiltStatusStamped,
  ArmStatus: ArmStatus,
  Pose2DArray: Pose2DArray,
  BatteryStatus: BatteryStatus,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  State: State,
  SubState: SubState,
  MotorStatus: MotorStatus,
  BatteryDockingStatus: BatteryDockingStatus,
  named_input_output: named_input_output,
  ElevatorStatus: ElevatorStatus,
  OdomManualCalibrationStatusStamped: OdomManualCalibrationStatusStamped,
  MotorCurrent: MotorCurrent,
  SafetyModuleStatus: SafetyModuleStatus,
  MotorPID: MotorPID,
  MotorsStatusDifferential: MotorsStatusDifferential,
  StringArray: StringArray,
  InverterStatus: InverterStatus,
  ElevatorAction: ElevatorAction,
  LaserStatus: LaserStatus,
  ReturnMessage: ReturnMessage,
  Interfaces: Interfaces,
  Axis: Axis,
  Registers: Registers,
  OdomCalibrationStatusStamped: OdomCalibrationStatusStamped,
  BatteryStatusStamped: BatteryStatusStamped,
  Alarms: Alarms,
  named_inputs_outputs: named_inputs_outputs,
  QueryAlarm: QueryAlarm,
  MotorsStatus: MotorsStatus,
  ptz: ptz,
  OdomManualCalibrationStatus: OdomManualCalibrationStatus,
  SetElevatorAction: SetElevatorAction,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorActionGoal: SetElevatorActionGoal,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorResult: SetElevatorResult,
};
