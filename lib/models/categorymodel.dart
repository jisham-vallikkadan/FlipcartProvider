

class Recentitems{
  String recntname;
  String recentimage;
  void Function() tap;

  Recentitems({
    required this.recntname,
    required this.recentimage,required this.tap
});
}

class Griditem{
  String griditemimage;
  String griditemname;
  String griditemdiscriotion;
  int griditemprice;
  bool griditemsizestatus;
  int gridid;
  int gridcount;
  double? lapdisplaysize;
  double? lapweight;


  Griditem({
    required this.griditemimage,
    required this.griditemname,
    required this.griditemdiscriotion,
    required this.griditemprice,
    required this.griditemsizestatus,
    required this.gridid,
    required this.gridcount,
    required this.lapweight,
    required this.lapdisplaysize,


});
}