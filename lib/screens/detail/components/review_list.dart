class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              reviews.length,
              (index) => Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        reviews[index].content,
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
