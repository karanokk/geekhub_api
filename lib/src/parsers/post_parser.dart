import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:html2md/html2md.dart' as html2md;

import '../entities/medal.dart';
import '../entities/post.dart';
import '../entities/user.dart';
import '../utils.dart' show ElementHelper, parseTime, snakeToTitleCamel;

Post parsePost(String htmlStr) {
  final doc = parse(htmlStr);

  final mainbox = doc.querySelector('main > div[class^=box]');

  final headerDiv = mainbox.querySelector('div.flex.justify-between.p-2');
  assert(headerDiv.children.length == 2);
  final authorImageUrl =
      headerDiv.querySelector('div.mr-3 > img.object-cover').src;
  final headerInfos = headerDiv.children.last
      .querySelectorAll('span')
      .map((e) => e.text.trim())
      .toList(growable: false);
  assert(headerInfos.length == 17);
  final authorName = headerInfos[0];
  final authorGroup = headerInfos[1];
  final authorGbitCount = int.parse(headerInfos[4]);
  final authorStarCount = int.parse(headerInfos[7]);
  final authorScoreCount = double.parse(headerInfos[10]);

  final authorMedals = headerDiv.children.last
      .querySelectorAll('div > img')
      .map((e) => Medal(title: e.title, imageUrl: e.src))
      .toList(growable: false); // 可无

  // 发布于 大约 2 个月前 更新于 大约 2 个月前  997 浏览
  final sinceCreated =
      headerInfos[12].substring(3).replaceFirst('大约', '').trim();
  final createdAt = parseTime(sinceCreated);
  final sinceLastUpdated =
      headerInfos[14].substring(3).replaceFirst('大约', '').trim();
  final updatedAt = parseTime(sinceLastUpdated);
  final insights = int.parse(headerInfos[16].split(' ')[0]);

  final storyDiv = doc.querySelectorAll('div.story.p-4');
  final story = storyDiv.map((e) => html2md.convert(e.innerHtml)).join('');

  final starCount = int.parse(doc.querySelector('span#stars_count').text);

  final shareUrl =
      mainbox.querySelector('div.social-share-button').attributes['data-url'];

  final pathItems = Uri.parse(shareUrl).path.split('/');
  assert(pathItems.length == 3);
  final id = int.parse(pathItems.last);
  final typeItem = snakeToTitleCamel(pathItems[1]);
  final type = typeItem.substring(0, typeItem.length - 1);

  final navigationA = mainbox.querySelector('div.p-3 > ol > li:last-child > a');

  String navigationTitle;
  String navigationUrl;

  if (type != 'Work' && type != 'Service') {
    navigationTitle = navigationA.text.trim();
    navigationUrl = navigationA.href;
  }

  final postBoxDiv = mainbox.querySelector('div.mt-5');

  PostBox box;
  String title;
  switch (type) {
    case 'Post':
      title = mainbox.querySelector('div.p-2.text-xl.heading').text;
      box = const PostBox.topic();
      break;
    case 'Molecule':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text;
      box = _parseMolecule(postBoxDiv);
      break;
    case 'SecondHand':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text;
      box = _parseSecondHand(postBoxDiv);
      break;
    case 'Auction':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text.trim();
      box = _parseAuction(postBoxDiv);
      break;
    case 'GroupBuy':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text;
      box = _parseGroupBuy(postBoxDiv);
      break;
    case 'Work':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text;
      box = _parseWork(postBoxDiv);
      break;
    case 'Service':
      title = mainbox.querySelector('div.p-3.text-xl.heading').text;
      box = _parseService(postBoxDiv);
      break;
  }

  return Post(
      id: id,
      type: type,
      title: title,
      text: story,
      box: box,
      navigationTitle: navigationTitle,
      navigationUrl: navigationUrl,
      shareURL: shareUrl,
      starCount: starCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      insights: insights,
      author: User(
        name: authorName,
        imageUrl: authorImageUrl,
        medals: authorMedals,
        group: authorGroup,
        gbitCount: authorGbitCount,
        score: authorScoreCount,
        starCount: authorStarCount,
      ));
}

PostBox _parseMolecule(Element body) {
  assert(body.children.length == 2);
  final coverImageURL = body.querySelector('img.object-cover')?.src;
  assert(body.children.last.children.length == 2);
  final leftRowTextValues = body.children.last.children[0].children
      .map((e) => (e.querySelector('span') ?? e.children[1]).text)
      .toList(growable: false);
  final productName = leftRowTextValues[0];
  final proudctValue = double.parse(leftRowTextValues[1].substring(1));
  final price = double.parse(leftRowTextValues[2].substring(1));
  final numerator = int.parse(leftRowTextValues[3]);
  final currentDenominator = int.parse(leftRowTextValues[4]);
  final wuliu = leftRowTextValues[5];
  final contact = leftRowTextValues[6];
  final rightRows = body.children[1].children[1].children[0].children;
  PostBoxMoleculeState state;
  if (rightRows.length == 2) {
    final countDown =
        body.querySelector('#count-down').attributes.remove('data-seconds');
    state = PostBoxMoleculeState.inProgress(int.parse(countDown));
  } else {
    final since = rightRows[0].text.trim();
    final targetFloorSpan =
        rightRows[2].querySelector('span.inline-flex.flex-wrap');
    final targetFloors = targetFloorSpan == null
        ? -1
        : targetFloorSpan.text
            .split(', ')
            .map((e) => int.parse(e))
            .toList(growable: false);
    state = PostBoxMoleculeState.ended(since, targetFloors);
  }
  final attentions = rightRows.last
      .querySelectorAll('ul > li')
      .map((e) => e.text)
      .toList(growable: false);
  return PostBox.molecule(
      productName: productName,
      proudctValue: proudctValue,
      price: price,
      numerator: numerator,
      currentDenominator: currentDenominator,
      state: state,
      imageURL: coverImageURL,
      wuliu: wuliu,
      contact: contact,
      attentions: attentions);
}

PostBox _parseSecondHand(Element body) {
  final coverImageURL = body.querySelector('img.object-cover')?.src;
  final title = body.querySelector('div.p-3.text-xl.heading').text;
  final rows = body
      .querySelector('div.flex > div.flex-1')
      .children
      .map((e) => (e.querySelector('span') ?? e.children[1]).text)
      .toList(growable: false);
  assert(rows.length == 5);
  final quality = rows[0];
  final normalPrice = double.parse(rows[1].substring(1));
  final price = double.parse(rows[2].substring(1));
  final wuliu = rows[3];
  final contact = rows[4];

  final isEnded = body.querySelector('form > input') != null;

  return PostBox.secondHand(
    imageURL: coverImageURL,
    title: title,
    quality: quality,
    normalPrice: normalPrice,
    price: price,
    wuliu: wuliu,
    contact: contact,
    isEnded: isEnded,
  );
}

PostBox _parseAuction(Element box) {
  final imageUrl = box.querySelector('div > img.object-cover').src;
  final auctionArea = box.querySelector('div.auction-area');
  final title = auctionArea.querySelector('h2').text;
  assert(auctionArea.children.length == 3);
  final descriptionTexts = auctionArea.children[1].children[0]
      .querySelectorAll('div:last-child')
      .map((e) => e.text.trim())
      .toList(growable: false);
  final quality = descriptionTexts[0];
  final estimatedPrice = double.parse(descriptionTexts[1].substring(1));
  final basePriceTexts = descriptionTexts[2].substring(1).split('\n');
  final basePrice = double.parse(basePriceTexts.first);
  final hasReservedPrice = basePriceTexts.length > 1;
  final currentPrice = double.parse(descriptionTexts[3].substring(1));

  final wuliu = descriptionTexts[4];
  final contact = descriptionTexts[6];

  final rightRows = auctionArea.children[1].children[1].children[0].children;
  PostBoxAutionState state;

  if (rightRows[1].localName == 'form') {
    final countDown =
        int.parse(rightRows[0].children[0].attributes['data-seconds']);
    state = PostBoxAutionState.inProgress(countDown);
  } else {
    assert(rightRows.length == 3);
    final since = rightRows[1].text.trim();
    if (rightRows.last.children.length == 1) {
      final failedMessage =
          rightRows.last.children[0].querySelector('span').text;
      state = PostBoxAutionState.failed(since, failedMessage);
    } else {
      final dealPrice = double.parse(rightRows[2].children[0].children[0].text);
      final dealUserName = rightRows[2].children[1].children[0].text;
      state = PostBoxAutionState.ended(since, dealUserName, dealPrice);
    }
  }

  return PostBox.auction(
      imageURL: imageUrl,
      title: title,
      quality: quality,
      estimatedPrice: estimatedPrice,
      basePrice: basePrice,
      hasReservedPrice: hasReservedPrice,
      currentPrice: currentPrice,
      state: state,
      wuliu: wuliu,
      contact: contact);
}

PostBox _parseGroupBuy(Element body) {
  final coverImageURL = body.querySelector('img.object-cover')?.src;
  final title = body.querySelector('div.p-3 > h2').text;
  final leftRows = body
      .querySelector('div.flex > div.flex-1')
      .children
      .map((e) => (e.querySelector('span') ?? e.children[1]).text)
      .toList(growable: false);
  final normalPrice = double.parse(leftRows[0].substring(1));
  final groupBuyPrice = double.parse(leftRows[1].substring(1));
  final groupCount =
      int.parse(leftRows[2].substring(0, leftRows[2].length - 1));
  final wuliu = leftRows[3];
  final contact = leftRows[4];
  final remainCountSpan = body.children.last.children.last
      .querySelector('div.flex > div.flex-1 > span.font-mono.text-2xl.mr-1');
  final isEnded = remainCountSpan == null;
  final remainCount =
      remainCountSpan == null ? 0 : int.parse(remainCountSpan.text);
  return PostBox.groupBuy(
    imageURL: coverImageURL,
    title: title,
    normalPrice: normalPrice,
    groupBuyPrice: groupBuyPrice,
    groupCount: groupCount,
    remainCount: remainCount,
    wuliu: wuliu,
    contact: contact,
    isEnded: isEnded,
  );
}

PostBox _parseWork(Element body) {
  final coverImageURL = body.querySelector('img.object-cover')?.src;
  final title = body.querySelector('div.p-3.text-xl.heading').text;
  final leftRows = body
      .querySelector('div.flex > div.flex-1')
      .children
      .map((e) =>
          (e.querySelector('span > span:last-child') ?? e.children[1]).text)
      .toList(growable: false);
  final price = double.parse(leftRows[0]);
  final normalPrice = double.parse(leftRows[1]);
  final orderPrice = double.parse(leftRows[2]);
  final count = int.parse(leftRows[3].substring(0, leftRows[3].length - 1));
  final quality = leftRows[4];
  final wuliu = leftRows[5];
  final contact = leftRows[6];
  return PostBox.work(
      imageURL: coverImageURL,
      title: title,
      price: price,
      normalPrice: normalPrice,
      orderPrice: orderPrice,
      count: count,
      quality: quality,
      wuliu: wuliu,
      contact: contact);
}

PostBox _parseService(Element body) {
  final coverImageURL = body.querySelector('img.object-cover')?.src;
  final skill =
      body.querySelector('div.flex.flex-col.px-3 > div.flex > div.flex-1').text;
  final rows = body.children.last.children.first.children
      .map((e) => e.children.last.text)
      .toList(growable: false);
  final price = double.parse(rows[0]);
  final schedule = rows[1];
  final contact = rows[2];
  final serviceIsAvaliable = rows[3] == '可以服务';
  return PostBox.service(
      imageURL: coverImageURL,
      skill: skill,
      price: price,
      schedule: schedule,
      contact: contact,
      serviceIsAvaliable: serviceIsAvaliable);
}
