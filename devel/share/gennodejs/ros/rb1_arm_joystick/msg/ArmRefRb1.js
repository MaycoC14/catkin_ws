// Auto-generated. Do not edit!

// (in-package rb1_arm_joystick.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmRefRb1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_vel = null;
      this.joint_selection = null;
      this.select_reference = null;
      this.op_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('joint_selection')) {
        this.joint_selection = initObj.joint_selection
      }
      else {
        this.joint_selection = 0.0;
      }
      if (initObj.hasOwnProperty('select_reference')) {
        this.select_reference = initObj.select_reference
      }
      else {
        this.select_reference = 0.0;
      }
      if (initObj.hasOwnProperty('op_mode')) {
        this.op_mode = initObj.op_mode
      }
      else {
        this.op_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmRefRb1
    // Serialize message field [cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd_vel, buffer, bufferOffset);
    // Serialize message field [joint_selection]
    bufferOffset = _serializer.float64(obj.joint_selection, buffer, bufferOffset);
    // Serialize message field [select_reference]
    bufferOffset = _serializer.float64(obj.select_reference, buffer, bufferOffset);
    // Serialize message field [op_mode]
    bufferOffset = _serializer.uint8(obj.op_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmRefRb1
    let len;
    let data = new ArmRefRb1(null);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_selection]
    data.joint_selection = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [select_reference]
    data.select_reference = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [op_mode]
    data.op_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rb1_arm_joystick/ArmRefRb1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea1e485f946c43bd1f8a76b08ea8ed5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist cmd_vel
    float64 joint_selection
    float64 select_reference
    uint8 op_mode
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmRefRb1(null);
    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.joint_selection !== undefined) {
      resolved.joint_selection = msg.joint_selection;
    }
    else {
      resolved.joint_selection = 0.0
    }

    if (msg.select_reference !== undefined) {
      resolved.select_reference = msg.select_reference;
    }
    else {
      resolved.select_reference = 0.0
    }

    if (msg.op_mode !== undefined) {
      resolved.op_mode = msg.op_mode;
    }
    else {
      resolved.op_mode = 0
    }

    return resolved;
    }
};

module.exports = ArmRefRb1;
