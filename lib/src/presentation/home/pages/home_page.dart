import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/config/gen/assets.gen.dart';
import 'package:quran/src/config/themes/app_themes.dart';
import 'package:quran/src/core/core.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/presentation/home/logics/home_surah_list_logic.dart';
import 'package:quran/src/presentation/shared/components/loading_component.dart';
import 'package:quran/src/presentation/shared/components/page_decorator.dart';
import 'package:quran/src/presentation/surah/logic/ayah_audio_logic.dart';
import 'package:quran/src/presentation/surah/widgets/ayah_voice_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) async =>
          await ref.read(homeSurahListProvider.notifier).loadSurahList(),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _onScroll() async{
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      await ref.read(homeSurahListProvider.notifier).loadMoreSurahs();
    }
  }

  final List<TagModel> tags = [
    TagModel(name: 'سوره‌ها', type: HomeSurahTagFilterEnum.all),
    TagModel(name: 'جزء‌ها', type: HomeSurahTagFilterEnum.joz),
    TagModel(name: 'علاقه‌مندی ها', type: HomeSurahTagFilterEnum.favorite),
  ];

  @override
  Widget build(BuildContext context) {
    ref.listen(
      audioServiceProvider,
      (previous, next) async {
        if (previous?.value?.state != next.value?.state) {
          await next.maybeWhen(
            orElse: () {},
            data: (data) async {
              if (data.state.isCompleted()) {
                await ref.read(audioServiceProvider.notifier).playNextAyah();
                await Future.delayed(Durations.medium1);
              }
            },
          );
        }
      },
    );
    return PageDecorator(
      hasPadding: false,
      hasSingleChildScrollView: false,
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: kBackgroundGradient,
              ),
            ),
          ),
          Positioned.fill(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                const SliverAppBar.medium(
                  automaticallyImplyLeading: false,
                  expandedHeight: 74,
                  pinned: false,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: AppbarWidget(),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    maxHeight: 188,
                    minHeight: 188,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                      child: HomePlayerWidget(),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    maxHeight: 64,
                    minHeight: 64,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        width: context.deviceWidthFactor(1),
                        child: Column(
                          children: [
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: kOnBackgroundColor,
                                ),
                                width: context.deviceWidthFactor(1),
                                child: Row(
                                  children: List.generate(
                                    3,
                                    (index) => HomeTagbarItemWidget(
                                      selected: tags[index].type ==
                                          ref.watch(homeSurahTagFilterProvider),
                                      title: tags[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.zero,
                  sliver: ref.watch(homeSurahListProvider).when(
                        loading: () => const SliverToBoxAdapter(
                          child: Center(child: LoadingComponent()),
                        ),
                        error: (error, stack) => SliverToBoxAdapter(
                          child: Center(child: Text('خطا در بارگذاری: $error')),
                        ),
                        data: (surahsState) => SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              if (index >= surahsState.surahs.length) {
                                return surahsState.hasMore
                                    ? const Center(child: LoadingComponent())
                                    : const SizedBox.shrink();
                              }
                              return SurahTileWidget(
                                index: index,
                                surah: surahsState.surahs[index],
                              );
                            },
                            childCount: surahsState.surahs.length + 1,
                          ),
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
}

class HomePlayerWidget extends ConsumerStatefulWidget {
  const HomePlayerWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomePlayerWidgetState();
}

class _HomePlayerWidgetState extends ConsumerState<HomePlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              top: 36,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: kOnBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: context.deviceWidthFactor(.63),
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 36,
                      ),
                      child: Column(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (ref.read(audioServiceProvider).hasValue) ...[
                            const SizedBox(height: 6),
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Text(
                                  ref
                                          .watch(audioServiceProvider)
                                          .value
                                          ?.surah
                                          ?.name ??
                                      'هنوز سوره ای پخش نشده',
                                  style: kHeading5BoldTextStyle.copyWith(
                                    fontFamily: kArFont,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 12, top: 3),
                                  child: Text(
                                    ref
                                                .watch(audioServiceProvider)
                                                .value
                                                ?.ayahNumber !=
                                            null
                                        ? 'آیه  ${ref.watch(audioServiceProvider).value!.ayahNumber! + 1}'
                                            .toPersianString()
                                        : '',
                                    style: kMediumBoldTextStyle.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IgnorePointer(
                              ignoring: ref
                                      .watch(audioServiceProvider)
                                      .value
                                      ?.surah ==
                                  null,
                              child: SizedBox(
                                width: double.infinity,
                                child: AyahVoiceWidget(
                                  ayahNumber: ref
                                      .watch(audioServiceProvider)
                                      .value
                                      ?.ayahNumber,
                                  link: ref
                                          .watch(audioServiceProvider)
                                          .value
                                          ?.surah
                                          ?.ayahs?[ref
                                                  .read(audioServiceProvider)
                                                  .value
                                                  ?.ayahNumber ??
                                              0]
                                          .audio ??
                                      '',
                                  surah: ref
                                      .watch(audioServiceProvider)
                                      .value
                                      ?.surah,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: -12,
              top: 6,
              child: Assets.pngs.abdolbaset.image(),
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 20,
              child: Icon(Icons.person_rounded),
            ),
            Text(
              'قرآن کریم',
              style: kHeading4BoldTextStyle.copyWith(
                fontFamily: 'AlQalamNew',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SurahTileWidget extends StatelessWidget {
  const SurahTileWidget({
    required this.index,
    required this.surah,
    super.key,
  });
  final int index;
  final Surah surah;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 24, right: 24),
      child: InkWell(
        onTap: () {
          context.push('/home/surah/${surah.number}');
        },
        child: Container(
          width: context.deviceWidthFactor(0.8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: kOnBackgroundColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${surah.numberOfAyahs ?? 0} آیه'.toPersianString(),
                      textDirection: TextDirection.rtl,
                      style:
                          kNormalBoldTextStyle.copyWith(color: Colors.white70),
                    ),
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white70,
                      size: 28,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(26),
                child: Text(
                  surah.name ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'AlQalamNew',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    if (shrinkOffset > 2) {
      return ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: SizedBox.expand(child: child),
        ),
      );
    }
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class HomeTagbarItemWidget extends ConsumerWidget {
  const HomeTagbarItemWidget({
    super.key,
    required this.selected,
    required this.title,
  });
  final bool selected;
  final TagModel title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(
        onTap: () {
          ref
              .read(homeSurahTagFilterProvider.notifier)
              .changeTagFilter(title.type);
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: Text(
            title.name,
            style: kNormalBoldTextStyle.copyWith(
              color: selected ? Colors.black : Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}

class TagModel {
  final String name;
  final HomeSurahTagFilterEnum type;
  TagModel({required this.name, required this.type});
}
