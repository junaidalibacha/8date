import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views/home_page/no_match.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final ScrollController _scrollController = ScrollController();

  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: ColorManager.white,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(
                  'assets/images/chat_profile.png',
                ),
              ),
            ),
            buildHorizontalSpace(10),
            kText24('Katie'),
            const Spacer(),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                _showModalBottomSheet(context);
              },
              icon: Icon(
                Icons.menu,
                size: getProportionateScreenHeight(25),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          buildVerticleSpace(getProportionateScreenHeight(40)),
          Visibility(
            visible: _messages.isEmpty,
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorManager.white,
                          radius: 80,
                          child: Image.asset('assets/images/chat_profile.png'),
                        ),
                        Positioned(
                          bottom: getProportionateScreenHeight(10),
                          right: getProportionateScreenWidth(20),
                          child: Container(
                            width: getProportionateScreenWidth(20),
                            height: getProportionateScreenHeight(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    kText36('Katie'),
                    kText12('Friday, december 5th'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              controller: _scrollController,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isSent = index % 2 == 0;
                return Align(
                  alignment:
                      isSent ? Alignment.centerRight : Alignment.centerLeft,
                  child: Column(
                    children: [
                      // buildVerticleSpace(20),
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: isSent
                              ? ColorManager.accent
                              : const Color(0XFF6627B7),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(message),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: getProportionateScreenHeight(60),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(15))),
                    child: Center(
                      child: TextField(
                        controller: _textController,
                        textCapitalization: TextCapitalization.words,
                        style: TextStyleManager.regularTextStyle(
                          fontSize: getProportionateScreenHeight(24),
                        ),
                        cursorColor: ColorManager.white,
                        decoration: InputDecoration(
                          hintStyle: TextStyleManager.regularTextStyle(
                            color: ColorManager.white,
                            fontSize: getProportionateScreenHeight(24),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder
                              .none, // remove underline when not focused
                          focusedBorder: InputBorder.none,
                          hintText: 'Send a message',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(11)),
                InkWell(
                  onTap: () {
                    final message = _textController.text.trim();
                    if (message.isNotEmpty) {
                      setState(() {
                        _messages.add(message);
                      });
                      _textController.clear();

                      // Generate a dummy response
                      Future.delayed(const Duration(milliseconds: 500), () {
                        final response = 'Dummy response to "$message"';
                        setState(() {
                          _messages.add(response);
                        });
                      });
                    }
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                    );
                  },
                  child: Container(
                    height: getProportionateScreenHeight(60),
                    width: getProportionateScreenWidth(60),
                    decoration: BoxDecoration(
                        color: ColorManager.grey,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(50))),
                    child: Icon(
                      Icons.send_rounded,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(getProportionateScreenHeight(15))),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: ColorManager.primary.withOpacity(.9),
              borderRadius: BorderRadius.circular(15)),
          height: SizeConfig.screenHeight -
              kToolbarHeight -
              getProportionateScreenHeight(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(const NoMatch());
                },
                child: Column(
                  children: [
                    buildVerticleSpace(100),
                    Image.asset(
                      AssetsIcons.deleteIcon,
                      width: getProportionateScreenWidth(50),
                      height: getProportionateScreenHeight(50),
                    ),
                    buildVerticleSpace(10),
                    kText32('Delete Match')
                  ],
                ),
              ),
              Column(
                children: [
                  buildVerticleSpace(100),
                  Image.asset(
                    AssetsIcons.reportIcon,
                    width: getProportionateScreenWidth(50),
                    height: getProportionateScreenHeight(50),
                  ),
                  buildVerticleSpace(10),
                  kText32('report Match')
                ],
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.chatBubble);
                },
                child: Column(
                  children: [
                    buildVerticleSpace(100),
                    Image.asset(
                      AssetsIcons.bubleIcon,
                      width: getProportionateScreenWidth(50),
                      height: getProportionateScreenHeight(50),
                    ),
                    buildVerticleSpace(10),
                    kText32('chat bubble')
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
