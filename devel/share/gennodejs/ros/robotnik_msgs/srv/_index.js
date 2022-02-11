
"use strict";

let SetTransform = require('./SetTransform.js')
let SetInt16 = require('./SetInt16.js')
let SetByte = require('./SetByte.js')
let get_mode = require('./get_mode.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let SetMotorPID = require('./SetMotorPID.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let GetPTZ = require('./GetPTZ.js')
let SetElevator = require('./SetElevator.js')
let SetLaserMode = require('./SetLaserMode.js')
let enable_disable = require('./enable_disable.js')
let InsertTask = require('./InsertTask.js')
let get_modbus_register = require('./get_modbus_register.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let set_height = require('./set_height.js')
let set_odometry = require('./set_odometry.js')
let set_mode = require('./set_mode.js')
let set_analog_output = require('./set_analog_output.js')
let ack_alarm = require('./ack_alarm.js')
let get_alarms = require('./get_alarms.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let GetPOI = require('./GetPOI.js')
let QueryAlarms = require('./QueryAlarms.js')
let GetBool = require('./GetBool.js')
let SetBuzzer = require('./SetBuzzer.js')
let home = require('./home.js')
let SetString = require('./SetString.js')
let set_float_value = require('./set_float_value.js')
let set_digital_output = require('./set_digital_output.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let axis_record = require('./axis_record.js')
let SetMotorMode = require('./SetMotorMode.js')
let get_digital_input = require('./get_digital_input.js')
let set_modbus_register = require('./set_modbus_register.js')
let SetCurrent = require('./SetCurrent.js')
let set_ptz = require('./set_ptz.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')

module.exports = {
  SetTransform: SetTransform,
  SetInt16: SetInt16,
  SetByte: SetByte,
  get_mode: get_mode,
  ResetFromSubState: ResetFromSubState,
  SetMotorPID: SetMotorPID,
  SetMotorStatus: SetMotorStatus,
  GetPTZ: GetPTZ,
  SetElevator: SetElevator,
  SetLaserMode: SetLaserMode,
  enable_disable: enable_disable,
  InsertTask: InsertTask,
  get_modbus_register: get_modbus_register,
  set_named_digital_output: set_named_digital_output,
  set_height: set_height,
  set_odometry: set_odometry,
  set_mode: set_mode,
  set_analog_output: set_analog_output,
  ack_alarm: ack_alarm,
  get_alarms: get_alarms,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  GetPOI: GetPOI,
  QueryAlarms: QueryAlarms,
  GetBool: GetBool,
  SetBuzzer: SetBuzzer,
  home: home,
  SetString: SetString,
  set_float_value: set_float_value,
  set_digital_output: set_digital_output,
  SetEncoderTurns: SetEncoderTurns,
  axis_record: axis_record,
  SetMotorMode: SetMotorMode,
  get_digital_input: get_digital_input,
  set_modbus_register: set_modbus_register,
  SetCurrent: SetCurrent,
  set_ptz: set_ptz,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
};
