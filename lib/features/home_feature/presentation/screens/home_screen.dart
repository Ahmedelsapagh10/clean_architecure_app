import 'package:clean_architecure_app/config/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/home_feature_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeFeatureCubit>().fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeFeatureCubit, HomeFeatureState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Home Screen'),
            ),
            body: (state is HomeFeatureLoading)
                ? const Center(child: CircularProgressIndicator())
                : (state is HomeFeatureLoaded)
                    ? ListTile(
                        title: Text(state.post?.title ?? ''),
                        subtitle:
                            Text((state.post?.completed ?? '').toString()),
                      )
                    : (state is HomeFeatureError)
                        ? const Text('Error loading posts')
                        : Container());
      },
    );
  }
}
