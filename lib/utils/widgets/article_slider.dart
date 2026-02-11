import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/utils/theme/app_theme.dart';

class ArticleSlider extends StatefulWidget {
  const ArticleSlider({super.key});

  @override
  State<ArticleSlider> createState() => _ArticleSliderState();
}

class _ArticleSliderState extends State<ArticleSlider> {
  final PageController _controller =
      PageController(viewportFraction: 0.9);

  int _currentIndex = 0;
  Timer? _timer;

  final List<_ArticleData> _articles = [
    _ArticleData(
      title: 'Cara Memandikan Anabul',
      image: 'assets/pictures/articleImage.jpg',
    ),
    _ArticleData(
      title: 'Tips Merawat Bulu Kucing',
      image: 'assets/pictures/articleImage.jpg',
    ),
    _ArticleData(
      title: 'Makanan Sehat untuk Anjing',
      image: 'assets/pictures/articleImage.jpg',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!_controller.hasClients) return;

      _currentIndex = (_currentIndex + 1) % _articles.length;
      _controller.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 160.w,
          child: PageView.builder(
            controller: _controller,
            itemCount: _articles.length,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              final item = _articles[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: ArticleCard(
                  image: item.image,
                  title: item.title,
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10.h),
        _DotIndicator(
          length: _articles.length,
          currentIndex: _currentIndex,
        ),
      ],
    );
  }
}

/* =========================
   ARTICLE CARD
========================= */
class ArticleCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;

  const ArticleCard({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(12),
        shadowColor: Colors.black.withOpacity(0.18),
        color: AppColors.sand.withOpacity(0.9),
        child: Container(
          height: 130.h, // ⬅️ SAMA dengan PageView height
          padding: EdgeInsets.all(12.w),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title.contains(' ')
                      ? title.replaceFirst(' ', '\n')
                      : title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  height: 200.w,
                  width: 150.w,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/* =========================
   DOT INDICATOR
========================= */
class _DotIndicator extends StatelessWidget {
  final int length;
  final int currentIndex;

  const _DotIndicator({
    required this.length,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(length, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: isActive ? 12.w : 6.w,
          height: 6.w,
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.sand
                : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(3),
          ),
        );
      }),
    );
  }
}

/* =========================
   INTERNAL DATA
========================= */
class _ArticleData {
  final String title;
  final String image;

  const _ArticleData({
    required this.title,
    required this.image,
  });
}
