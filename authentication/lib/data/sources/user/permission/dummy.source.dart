part of "_source.dart";

/// [DummyUserPermissionDataSource] is a class that implements [UserPermissionDataSource] interface.
class DummyUserPermissionDataSource extends PaginatedDummyDataSource<PermissionModel, BasicSearchQueryModel> implements UserPermissionDataSource<DummyDataResponseModel<PermissionModel?>> {
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
