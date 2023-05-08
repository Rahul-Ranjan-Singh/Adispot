class parking{
  String id;
  String parkinName;
  List<String> images;
  String iFrame;
  String address;
  String fourWheelerSpace;
  String twoWheelerSpace;
  double rating;
  double fourWheelerParkingCharge;
  double twoWheelerParkingCharge;

  parking(
      this.id,
      this.parkinName,
      this.images,
      this.iFrame,
      this.address,
      this.rating,
      this.fourWheelerSpace,
      this.twoWheelerSpace,
      this.twoWheelerParkingCharge,
      this.fourWheelerParkingCharge
      );
}