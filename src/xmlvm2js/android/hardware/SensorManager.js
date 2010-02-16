qx.Class.define("android_hardware_SensorManager", {
  extend: java_lang_Object,
  construct: function() {
  	this.base(arguments);
  },
  members: {
	  $registerListener___android_hardware_SensorListener_int_int: function(l, f1, f2) {
	  	// TODO
      },
      $unregisterListener___android_hardware_SensorListener: function(l) {
    	  // TODO
      },
      $getDefaultSensor___int: function(type) {
    	  WARN("Missing: SensorManager.getDefaultSensor___int");
      },
      $registerListener___android_hardware_SensorEventListener_android_hardware_Sensor_int: function(listener, sensor, rate) {
    	  WARN("Missing: SensorManager.registerListener___android_hardware_SensorEventListener_android_hardware_Sensor_int");
      }
  }
});