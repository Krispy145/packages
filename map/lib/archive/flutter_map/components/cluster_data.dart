// import 'dart:math';

// import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
// import 'package:the_ivy_collection/views/flutter_map/components/marker.dart';
// import 'package:y_package/models/project.dart';

// class ProjectMarkerClusterData extends ClusterDataBase {
//   final Project highestScoreProject;

//   ProjectMarkerClusterData(YLogoRingedMarker marker) : highestScoreProject = marker.project;

//   ProjectMarkerClusterData._({required this.highestScoreProject});

//   @override
//   ProjectMarkerClusterData combine(ProjectMarkerClusterData data) {
//     return ProjectMarkerClusterData._(
//         highestScoreProject: (highestScoreProject.numbers.score?.firstOrNull ?? highestScoreProject.numberPairs.coordinate?.firstOrNull?.coordinatesModel.latitude ?? Random().nextDouble()) > (data.highestScoreProject.numbers.score?.firstOrNull ?? data.highestScoreProject.numberPairs.coordinate?.firstOrNull?.coordinatesModel.latitude ?? Random().nextDouble()) ? highestScoreProject : data.highestScoreProject, // TODO: Clean up scoring logic
//       );
//   }
// }
