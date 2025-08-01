import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/size_config.dart';
import '../bloc/blog_item/blog_item_cubit.dart';
import '../bloc/blog_item/blog_item_state.dart';

class BlogListView extends StatelessWidget {
  const BlogListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogItemCubit, BlogItemState>(
      builder: (context, state) {
        if (state.isLoading) {
          return SizedBox(
            height: SizeConfig.getProportionalHeight(40),
            child: const Center(child: CircularProgressIndicator()),
          );
        }
        if (state.error != null) {
          return Center(child: Text('Error: ${state.error}'));
        }

        return SizedBox(
          height: SizeConfig.getProportionalHeight(200),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: state.blogs.length,
            separatorBuilder: (_, __) =>
                SizedBox(width: SizeConfig.getProportionalWidth(16)),
            itemBuilder: (context, index) {
              final blog = state.blogs[index];
              final width = SizeConfig.getProportionalWidth(300);
              final height = SizeConfig.getProportionalHeight(200);

              return Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.getProportionalWidth(16),
                    ),
                    child: Image.network(
                      blog.imageUri,
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: width,
                    padding: EdgeInsets.all(
                      SizeConfig.getProportionalWidth(12),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          SizeConfig.getProportionalWidth(16),
                        ),
                        bottomRight: Radius.circular(
                          SizeConfig.getProportionalWidth(16),
                        ),
                      ),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      blog.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.getProportionalWidth(16),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
