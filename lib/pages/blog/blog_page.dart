import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/pages/blog/cubit/fetchdata_cubit.dart';
import 'package:learning__flutter/pages/blog/single_data.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<FetchdataCubit>();
      cubit.fetchdata();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
      body: SafeArea(child: Container(
        child: BlocBuilder<FetchdataCubit, FetchdataState>(
          builder: (context, state) {
            if (state is FetchdataInitial || state is dataLoadingState) {
              return Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      SizedBox(
                        child: CircularProgressIndicator(),
                      ),
                      SizedBox(
                        child: Text(state.toString()),
                      )
                    ],
                  ),
                ),
              );
            } else if (state is dataLoadedState) {
              final datas = state.todos;
              return ListView.builder(
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    final data = datas[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: ListTile(
                        tileColor: Colors.grey,
                        title: Text(data.title),
                        leading: Container(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SingleData(pass: data),
                                  ),
                                );
                              },
                              child: Text("view")),
                        ),
                      ),
                    );
                  });
            } else if (state is dataErrorState) {
              return Text(state.error);
            }
            return Text(state.toString());
          },
        ),
      )),
    ));
  }
}
