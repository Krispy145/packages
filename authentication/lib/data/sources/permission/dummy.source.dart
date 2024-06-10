part of "_source.dart";

/// [DummyPermissionDataSource] is a class that implements [PermissionDataSource] interface.
class DummyPermissionDataSource
    extends PaginatedDummyDataSource<PermissionModel, BasicSearchQueryModel>
    implements PermissionDataSource<DummyDataResponseModel<PermissionModel?>> {
  @override
  List<PermissionModel> get fakeData => PermissionModel.fakeData;

  @override
  bool matchesID(String id, PermissionModel item) => item.id == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, PermissionModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }
}
