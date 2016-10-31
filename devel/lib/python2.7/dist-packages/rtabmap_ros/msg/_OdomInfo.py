# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rtabmap_ros/OdomInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rtabmap_ros.msg
import geometry_msgs.msg
import std_msgs.msg

class OdomInfo(genpy.Message):
  _md5sum = "1b5746f933de3b103e1951e17dbf25de"
  _type = "rtabmap_ros/OdomInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """
Header header

#class rtabmap::OdometryInfo
#{
#    bool lost;
#    int matches;
#    int inliers;
#    float variance;
#    int features;
#    int localMapSize;
#    float time;
#
#    int type; // 0=BOW, 1=Optical Flow, 2=ICP
#
#    // BOW odometry
#    std::multimap<int, cv::KeyPoint> words;
#    std::vector<int> wordMatches;
#    std::vector<int> wordInliers;
#
#    // Optical Flow odometry
#    std::vector<cv::Point2f> refCorners;
#    std::vector<cv::Point2f> newCorners;
#    std::vector<int> cornerInliers;
#}

bool lost
int32 matches
int32 inliers
float32 variance
int32 features
int32 localMapSize
int32 localScanMapSize
float32 timeEstimation
float32 timeParticleFiltering
float32 stamp
float32 interval
float32 distanceTravelled

int32 type

int32[] wordsKeys
KeyPoint[] wordsValues
int32[] wordMatches
int32[] wordInliers
int32[] localMapKeys
Point3f[] localMapValues

Point2f[] refCorners
Point2f[] newCorners
int32[] cornerInliers

geometry_msgs/Transform transform
geometry_msgs/Transform transformFiltered

# compressed local scan map data
# use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
uint8[] localScanMap


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: rtabmap_ros/KeyPoint
#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_ros/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
================================================================================
MSG: rtabmap_ros/Point3f
#class cv::Point3f
#{
#    float x;
#    float y;
#    float z;
#}

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['header','lost','matches','inliers','variance','features','localMapSize','localScanMapSize','timeEstimation','timeParticleFiltering','stamp','interval','distanceTravelled','type','wordsKeys','wordsValues','wordMatches','wordInliers','localMapKeys','localMapValues','refCorners','newCorners','cornerInliers','transform','transformFiltered','localScanMap']
  _slot_types = ['std_msgs/Header','bool','int32','int32','float32','int32','int32','int32','float32','float32','float32','float32','float32','int32','int32[]','rtabmap_ros/KeyPoint[]','int32[]','int32[]','int32[]','rtabmap_ros/Point3f[]','rtabmap_ros/Point2f[]','rtabmap_ros/Point2f[]','int32[]','geometry_msgs/Transform','geometry_msgs/Transform','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,lost,matches,inliers,variance,features,localMapSize,localScanMapSize,timeEstimation,timeParticleFiltering,stamp,interval,distanceTravelled,type,wordsKeys,wordsValues,wordMatches,wordInliers,localMapKeys,localMapValues,refCorners,newCorners,cornerInliers,transform,transformFiltered,localScanMap

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OdomInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lost is None:
        self.lost = False
      if self.matches is None:
        self.matches = 0
      if self.inliers is None:
        self.inliers = 0
      if self.variance is None:
        self.variance = 0.
      if self.features is None:
        self.features = 0
      if self.localMapSize is None:
        self.localMapSize = 0
      if self.localScanMapSize is None:
        self.localScanMapSize = 0
      if self.timeEstimation is None:
        self.timeEstimation = 0.
      if self.timeParticleFiltering is None:
        self.timeParticleFiltering = 0.
      if self.stamp is None:
        self.stamp = 0.
      if self.interval is None:
        self.interval = 0.
      if self.distanceTravelled is None:
        self.distanceTravelled = 0.
      if self.type is None:
        self.type = 0
      if self.wordsKeys is None:
        self.wordsKeys = []
      if self.wordsValues is None:
        self.wordsValues = []
      if self.wordMatches is None:
        self.wordMatches = []
      if self.wordInliers is None:
        self.wordInliers = []
      if self.localMapKeys is None:
        self.localMapKeys = []
      if self.localMapValues is None:
        self.localMapValues = []
      if self.refCorners is None:
        self.refCorners = []
      if self.newCorners is None:
        self.newCorners = []
      if self.cornerInliers is None:
        self.cornerInliers = []
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      if self.transformFiltered is None:
        self.transformFiltered = geometry_msgs.msg.Transform()
      if self.localScanMap is None:
        self.localScanMap = b''
    else:
      self.header = std_msgs.msg.Header()
      self.lost = False
      self.matches = 0
      self.inliers = 0
      self.variance = 0.
      self.features = 0
      self.localMapSize = 0
      self.localScanMapSize = 0
      self.timeEstimation = 0.
      self.timeParticleFiltering = 0.
      self.stamp = 0.
      self.interval = 0.
      self.distanceTravelled = 0.
      self.type = 0
      self.wordsKeys = []
      self.wordsValues = []
      self.wordMatches = []
      self.wordInliers = []
      self.localMapKeys = []
      self.localMapValues = []
      self.refCorners = []
      self.newCorners = []
      self.cornerInliers = []
      self.transform = geometry_msgs.msg.Transform()
      self.transformFiltered = geometry_msgs.msg.Transform()
      self.localScanMap = b''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2if3i5fi().pack(_x.lost, _x.matches, _x.inliers, _x.variance, _x.features, _x.localMapSize, _x.localScanMapSize, _x.timeEstimation, _x.timeParticleFiltering, _x.stamp, _x.interval, _x.distanceTravelled, _x.type))
      length = len(self.wordsKeys)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.wordsKeys))
      length = len(self.wordsValues)
      buff.write(_struct_I.pack(length))
      for val1 in self.wordsValues:
        _v1 = val1.pt
        _x = _v1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _x = val1
        buff.write(_get_struct_3f2i().pack(_x.size, _x.angle, _x.response, _x.octave, _x.class_id))
      length = len(self.wordMatches)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.wordMatches))
      length = len(self.wordInliers)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.wordInliers))
      length = len(self.localMapKeys)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.localMapKeys))
      length = len(self.localMapValues)
      buff.write(_struct_I.pack(length))
      for val1 in self.localMapValues:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.refCorners)
      buff.write(_struct_I.pack(length))
      for val1 in self.refCorners:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.newCorners)
      buff.write(_struct_I.pack(length))
      for val1 in self.newCorners:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.cornerInliers)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.cornerInliers))
      _x = self
      buff.write(_get_struct_14d().pack(_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.transformFiltered.translation.x, _x.transformFiltered.translation.y, _x.transformFiltered.translation.z, _x.transformFiltered.rotation.x, _x.transformFiltered.rotation.y, _x.transformFiltered.rotation.z, _x.transformFiltered.rotation.w))
      _x = self.localScanMap
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wordsValues is None:
        self.wordsValues = None
      if self.localMapValues is None:
        self.localMapValues = None
      if self.refCorners is None:
        self.refCorners = None
      if self.newCorners is None:
        self.newCorners = None
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      if self.transformFiltered is None:
        self.transformFiltered = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 49
      (_x.lost, _x.matches, _x.inliers, _x.variance, _x.features, _x.localMapSize, _x.localScanMapSize, _x.timeEstimation, _x.timeParticleFiltering, _x.stamp, _x.interval, _x.distanceTravelled, _x.type,) = _get_struct_B2if3i5fi().unpack(str[start:end])
      self.lost = bool(self.lost)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordsKeys = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.wordsValues = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.KeyPoint()
        _v2 = val1.pt
        _x = _v2
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _x = val1
        start = end
        end += 20
        (_x.size, _x.angle, _x.response, _x.octave, _x.class_id,) = _get_struct_3f2i().unpack(str[start:end])
        self.wordsValues.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordMatches = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordInliers = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.localMapKeys = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.localMapValues = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point3f()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.localMapValues.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.refCorners = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point2f()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.refCorners.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.newCorners = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point2f()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.newCorners.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.cornerInliers = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 112
      (_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.transformFiltered.translation.x, _x.transformFiltered.translation.y, _x.transformFiltered.translation.z, _x.transformFiltered.rotation.x, _x.transformFiltered.rotation.y, _x.transformFiltered.rotation.z, _x.transformFiltered.rotation.w,) = _get_struct_14d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.localScanMap = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2if3i5fi().pack(_x.lost, _x.matches, _x.inliers, _x.variance, _x.features, _x.localMapSize, _x.localScanMapSize, _x.timeEstimation, _x.timeParticleFiltering, _x.stamp, _x.interval, _x.distanceTravelled, _x.type))
      length = len(self.wordsKeys)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.wordsKeys.tostring())
      length = len(self.wordsValues)
      buff.write(_struct_I.pack(length))
      for val1 in self.wordsValues:
        _v3 = val1.pt
        _x = _v3
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _x = val1
        buff.write(_get_struct_3f2i().pack(_x.size, _x.angle, _x.response, _x.octave, _x.class_id))
      length = len(self.wordMatches)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.wordMatches.tostring())
      length = len(self.wordInliers)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.wordInliers.tostring())
      length = len(self.localMapKeys)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.localMapKeys.tostring())
      length = len(self.localMapValues)
      buff.write(_struct_I.pack(length))
      for val1 in self.localMapValues:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      length = len(self.refCorners)
      buff.write(_struct_I.pack(length))
      for val1 in self.refCorners:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.newCorners)
      buff.write(_struct_I.pack(length))
      for val1 in self.newCorners:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.cornerInliers)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.cornerInliers.tostring())
      _x = self
      buff.write(_get_struct_14d().pack(_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.transformFiltered.translation.x, _x.transformFiltered.translation.y, _x.transformFiltered.translation.z, _x.transformFiltered.rotation.x, _x.transformFiltered.rotation.y, _x.transformFiltered.rotation.z, _x.transformFiltered.rotation.w))
      _x = self.localScanMap
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wordsValues is None:
        self.wordsValues = None
      if self.localMapValues is None:
        self.localMapValues = None
      if self.refCorners is None:
        self.refCorners = None
      if self.newCorners is None:
        self.newCorners = None
      if self.transform is None:
        self.transform = geometry_msgs.msg.Transform()
      if self.transformFiltered is None:
        self.transformFiltered = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 49
      (_x.lost, _x.matches, _x.inliers, _x.variance, _x.features, _x.localMapSize, _x.localScanMapSize, _x.timeEstimation, _x.timeParticleFiltering, _x.stamp, _x.interval, _x.distanceTravelled, _x.type,) = _get_struct_B2if3i5fi().unpack(str[start:end])
      self.lost = bool(self.lost)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordsKeys = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.wordsValues = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.KeyPoint()
        _v4 = val1.pt
        _x = _v4
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _x = val1
        start = end
        end += 20
        (_x.size, _x.angle, _x.response, _x.octave, _x.class_id,) = _get_struct_3f2i().unpack(str[start:end])
        self.wordsValues.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordMatches = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.wordInliers = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.localMapKeys = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.localMapValues = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point3f()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.localMapValues.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.refCorners = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point2f()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.refCorners.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.newCorners = []
      for i in range(0, length):
        val1 = rtabmap_ros.msg.Point2f()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.newCorners.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.cornerInliers = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      _x = self
      start = end
      end += 112
      (_x.transform.translation.x, _x.transform.translation.y, _x.transform.translation.z, _x.transform.rotation.x, _x.transform.rotation.y, _x.transform.rotation.z, _x.transform.rotation.w, _x.transformFiltered.translation.x, _x.transformFiltered.translation.y, _x.transformFiltered.translation.z, _x.transformFiltered.rotation.x, _x.transformFiltered.rotation.y, _x.transformFiltered.rotation.z, _x.transformFiltered.rotation.w,) = _get_struct_14d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.localScanMap = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3f2i = None
def _get_struct_3f2i():
    global _struct_3f2i
    if _struct_3f2i is None:
        _struct_3f2i = struct.Struct("<3f2i")
    return _struct_3f2i
_struct_B2if3i5fi = None
def _get_struct_B2if3i5fi():
    global _struct_B2if3i5fi
    if _struct_B2if3i5fi is None:
        _struct_B2if3i5fi = struct.Struct("<B2if3i5fi")
    return _struct_B2if3i5fi
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_14d = None
def _get_struct_14d():
    global _struct_14d
    if _struct_14d is None:
        _struct_14d = struct.Struct("<14d")
    return _struct_14d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
