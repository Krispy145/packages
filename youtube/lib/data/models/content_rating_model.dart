import "package:dart_mappable/dart_mappable.dart";

part "content_rating_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class ContentRatingModel with ContentRatingModelMappable {
  final String? acbRating;
  final String? agcomRating;
  final String? anatelRating;
  final String? bbfcRating;
  final String? bfvcRating;
  final String? bmukkRating;
  final String? catvRating;
  final String? catvfrRating;
  final String? cbfcRating;
  final String? cccRating;
  final String? cceRating;
  final String? chfilmRating;
  final String? chvrsRating;
  final String? cicfRating;
  final String? cnaRating;
  final String? cncRating;
  final String? csaRating;
  final String? cscfRating;
  final String? czfilmRating;
  final String? djctqRating;
  final List<String>? djctqRatingReasons;
  final String? ecbmctRating;
  final String? eefilmRating;
  final String? egfilmRating;
  final String? eirinRating;
  final String? fcbmRating;
  final String? fcoRating;
  final String? fmocRating;
  final String? fpbRating;
  final List<String>? fpbRatingReasons;
  final String? fskRating;
  final String? grfilmRating;
  final String? icaaRating;
  final String? ifcoRating;
  final String? ilfilmRating;
  final String? incaaRating;
  final String? kfcbRating;
  final String? kijkwijzerRating;
  final String? kmrbRating;
  final String? lsfRating;
  final String? mccaaRating;
  final String? mccypRating;
  final String? mcstRating;
  final String? mdaRating;
  final String? medietilsynetRating;
  final String? mekuRating;
  final String? mibacRating;
  final String? mocRating;
  final String? moctwRating;
  final String? mpaaRating;
  final String? mpaatRating;
  final String? mtrcbRating;
  final String? nbcRating;
  final String? nbcplRating;
  final String? nfrcRating;
  final String? nfvcbRating;
  final String? nkclvRating;
  final String? oflcRating;
  final String? pefilmRating;
  final String? rcnofRating;
  final String? resorteviolenciaRating;
  final String? rtcRating;
  final String? rteRating;
  final String? russiaRating;
  final String? skfilmRating;
  final String? smaisRating;
  final String? smsaRating;
  final String? tvpgRating;
  final String? ytRating;

  const ContentRatingModel({
    this.acbRating,
    this.agcomRating,
    this.anatelRating,
    this.bbfcRating,
    this.bfvcRating,
    this.bmukkRating,
    this.catvRating,
    this.catvfrRating,
    this.cbfcRating,
    this.cccRating,
    this.cceRating,
    this.chfilmRating,
    this.chvrsRating,
    this.cicfRating,
    this.cnaRating,
    this.cncRating,
    this.csaRating,
    this.cscfRating,
    this.czfilmRating,
    this.djctqRating,
    this.djctqRatingReasons,
    this.ecbmctRating,
    this.eefilmRating,
    this.egfilmRating,
    this.eirinRating,
    this.fcbmRating,
    this.fcoRating,
    this.fmocRating,
    this.fpbRating,
    this.fpbRatingReasons,
    this.fskRating,
    this.grfilmRating,
    this.icaaRating,
    this.ifcoRating,
    this.ilfilmRating,
    this.incaaRating,
    this.kfcbRating,
    this.kijkwijzerRating,
    this.kmrbRating,
    this.lsfRating,
    this.mccaaRating,
    this.mccypRating,
    this.mcstRating,
    this.mdaRating,
    this.medietilsynetRating,
    this.mekuRating,
    this.mibacRating,
    this.mocRating,
    this.moctwRating,
    this.mpaaRating,
    this.mpaatRating,
    this.mtrcbRating,
    this.nbcRating,
    this.nbcplRating,
    this.nfrcRating,
    this.nfvcbRating,
    this.nkclvRating,
    this.oflcRating,
    this.pefilmRating,
    this.rcnofRating,
    this.resorteviolenciaRating,
    this.rtcRating,
    this.rteRating,
    this.russiaRating,
    this.skfilmRating,
    this.smaisRating,
    this.smsaRating,
    this.tvpgRating,
    this.ytRating,
  });

  static const fromMap = ContentRatingModelMapper.fromMap;
  static const fromJson = ContentRatingModelMapper.fromJson;

  // static const empty = ContentRatingModel(id: "");

  // static const contentRatingOne = ContentRatingModel(
  //   id: "contentRatingOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const contentRatingTwo = ContentRatingModel(
  //   id: "contentRatingTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const contentRatingThree = ContentRatingModel(
  //   id: "contentRatingThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<ContentRatingModel> fakeData = [
  //   contentRatingOne,
  //   contentRatingTwo,
  //   contentRatingThree,
  // ];
}
