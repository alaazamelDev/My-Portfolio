import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_portfolio/configs/responsive.dart';
import 'package:my_personal_portfolio/configs/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: Text(
                  'Alaa Aldeen Zamel\nMobile Apps Developer\nBased in Syria',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const _UserPreview(),
              const _UserWorkAspects(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Divider(
                  color: Theme.of(context).dividerColor,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserWorkAspects extends StatelessWidget {
  const _UserWorkAspects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 128.0,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 60,
            ),
            const SizedBox(width: 64),
            SizedBox(
              width: 60,
              height: 60,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'android.png',
                  isAntiAlias: true,
                ),
              ),
            ),
            const SizedBox(width: 64),
            SizedBox(
              width: 60,
              height: 60,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'apple.png',
                  isAntiAlias: true,
                ),
              ),
            ),
            const SizedBox(width: 64),
            SizedBox(
              width: 60,
              height: 60,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'google-firebase.png',
                  isAntiAlias: true,
                ),
              ),
            ),
            const SizedBox(width: 64),
            SizedBox(
              width: 60,
              height: 60,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'laravel.png',
                  isAntiAlias: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserPreview extends StatelessWidget {
  const _UserPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.getScreenHeight(context) * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _InfoCardView(
                  title: 'BIOGRAPHY',
                  content: 'Work for money and'
                      '\nprogram for love!'
                      '\nI\'m Alaa, a Mobile'
                      '\nApps Developer based'
                      '\nin Syria.',
                ),
                _InfoCardView(
                  title: 'CONTACT',
                  content: 'Damascus, Syria\n'
                      'alaa.zamel80@gmail.com\n'
                      '+963 991 146 587',
                ),
                _InfoCardView(
                  title: 'SERVICES',
                  content: 'Build High Quality Apps'
                      '\nMaintain Existing Projects'
                      '\nImprove Apps Performance',
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Center(
              child: _UserPictureView(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _DetailsCardView(
                  title: 'YEARS OF\nEXPERIENCE',
                  content: '2',
                ),
                _DetailsCardView(
                  title: 'SATISFICATION\nCLIENTS',
                  content: '100%',
                ),
                _DetailsCardView(
                  title: 'CLIENTS ON WORLDWIDE',
                  content: '+80',
                ),
                _DetailsCardView(
                  title: 'PROJECTS DONE',
                  content: '675',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UserPictureView extends StatelessWidget {
  const _UserPictureView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(180),
      ),
      height: Responsive.getScreenHeight(context) * 0.79,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(180),
        child: Image.asset(
          'user_picture.JPG',
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}

class _InfoCardView extends StatelessWidget {
  const _InfoCardView({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                letterSpacing: 1,
                color: AppColors.textFaded,
              ),
        ),
        const SizedBox(height: 24),
        Text(
          content,
          textAlign: TextAlign.start,
          style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class _DetailsCardView extends StatelessWidget {
  const _DetailsCardView({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .primaryTextTheme
              .headline6!
              .copyWith(letterSpacing: 1, color: AppColors.textFaded),
        ),
        const SizedBox(height: 16),
        Text(
          content,
          textAlign: TextAlign.start,
          style: GoogleFonts.elMessiri(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

class _MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'WORKS',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline6!
                        .copyWith(letterSpacing: 1),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'CONTACT',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline6!
                        .copyWith(letterSpacing: 1),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 35,
                    height: 35,
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                ),
                Text(
                  'ALAA\nZAMEL',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/twitter.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/github.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/facebook.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/linkedin.svg',
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}
