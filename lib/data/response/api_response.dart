import '../../utils/enum.dart';

class ApiResponse<T> {
  ApiResponseStatus? status;
  T? data;
  String? message;
  ApiResponse({this.status, this.data, this.message});

  ApiResponse.loadding() : status = ApiResponseStatus.loading;
  ApiResponse.complete(this.data) : status = ApiResponseStatus.complete;
  ApiResponse.error(this.message) : status = ApiResponseStatus.error;

  @override
  String toString() {
    return 'Status:$status \n Message:$message \n  Data:$data';
  }
}
