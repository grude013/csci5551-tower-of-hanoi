
"use strict";

let AnalogOutputCommand = require('./AnalogOutputCommand.js');
let EndEffectorState = require('./EndEffectorState.js');
let AssemblyState = require('./AssemblyState.js');
let DigitalIOState = require('./DigitalIOState.js');
let RobustControllerStatus = require('./RobustControllerStatus.js');
let AnalogIOState = require('./AnalogIOState.js');
let EndEffectorCommand = require('./EndEffectorCommand.js');
let CollisionAvoidanceState = require('./CollisionAvoidanceState.js');
let URDFConfiguration = require('./URDFConfiguration.js');
let AnalogIOStates = require('./AnalogIOStates.js');
let NavigatorStates = require('./NavigatorStates.js');
let DigitalOutputCommand = require('./DigitalOutputCommand.js');
let CameraControl = require('./CameraControl.js');
let EndEffectorProperties = require('./EndEffectorProperties.js');
let EndpointStates = require('./EndpointStates.js');
let CameraSettings = require('./CameraSettings.js');
let SEAJointState = require('./SEAJointState.js');
let CollisionDetectionState = require('./CollisionDetectionState.js');
let HeadState = require('./HeadState.js');
let NavigatorState = require('./NavigatorState.js');
let DigitalIOStates = require('./DigitalIOStates.js');
let AssemblyStates = require('./AssemblyStates.js');
let EndpointState = require('./EndpointState.js');
let JointCommand = require('./JointCommand.js');
let HeadPanCommand = require('./HeadPanCommand.js');

module.exports = {
  AnalogOutputCommand: AnalogOutputCommand,
  EndEffectorState: EndEffectorState,
  AssemblyState: AssemblyState,
  DigitalIOState: DigitalIOState,
  RobustControllerStatus: RobustControllerStatus,
  AnalogIOState: AnalogIOState,
  EndEffectorCommand: EndEffectorCommand,
  CollisionAvoidanceState: CollisionAvoidanceState,
  URDFConfiguration: URDFConfiguration,
  AnalogIOStates: AnalogIOStates,
  NavigatorStates: NavigatorStates,
  DigitalOutputCommand: DigitalOutputCommand,
  CameraControl: CameraControl,
  EndEffectorProperties: EndEffectorProperties,
  EndpointStates: EndpointStates,
  CameraSettings: CameraSettings,
  SEAJointState: SEAJointState,
  CollisionDetectionState: CollisionDetectionState,
  HeadState: HeadState,
  NavigatorState: NavigatorState,
  DigitalIOStates: DigitalIOStates,
  AssemblyStates: AssemblyStates,
  EndpointState: EndpointState,
  JointCommand: JointCommand,
  HeadPanCommand: HeadPanCommand,
};
